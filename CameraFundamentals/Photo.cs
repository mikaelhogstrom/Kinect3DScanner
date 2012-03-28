using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Controls;

namespace CameraFundamentals
{
    class Photo
    {
        private const int PLAYER_INDEX_BITMASK_WIDTH = 3;
        const float MaxDepthDistance = 4095; // max value returned
        const float MinDepthDistance = 850; // min value returned
        const float MaxDepthDistanceOffset = MaxDepthDistance - MinDepthDistance;

        //TODO use only this until averaging works
        private const int FRAME_USED = 0;
        
        private bool isTaking = false;
        private int currentFrame;
        private int totalFrames;
        private Image colorRenderTarget;
        private Image depthRenderTarget;
        private int width;
        private int height;

        private byte[][] colorPixels;
        private byte[][] depthPixels;
        private short[][] depthData;

        public bool IsTaking
        {
            get { return isTaking; }
        }

        

        public void TakePhoto(int Frames, int Width, int Height, Image ColorRenderTarget, Image DepthRenderTarget)
        {
            colorPixels = new byte[Frames][];
            depthData = new short[Frames][];
            depthPixels = new byte[Frames][];
            isTaking = true;
            currentFrame = 0;
            totalFrames = Frames;
            width = Width;
            height = Height;

            colorRenderTarget = ColorRenderTarget;
            depthRenderTarget = DepthRenderTarget;
        }

        public void AddFrame(byte[] color, short[] depth)
        {
            colorPixels[currentFrame] = color;
            depthData[currentFrame] = depth;
            currentFrame++;

            if (currentFrame >= totalFrames)
            {
                isTaking = false;
                finalizeImage();
            }
        }

        /// <summary>
        /// Processes the captured frames into one image and one 
        /// </summary>
        private void finalizeImage()
        {
            translateDepthToPixels();
            //TODO: when averaging make a similarity function to check if colordata is consistent through frames
            // if it is not the picture should be rejected
            int stride = width * 4;
            colorRenderTarget.Source =
                BitmapSource.Create(width, height, 96, 96, PixelFormats.Bgr32, null, colorPixels[FRAME_USED], stride);
            depthRenderTarget.Source =
                BitmapSource.Create(width, height, 96, 96, PixelFormats.Bgr32, null, depthPixels[FRAME_USED], stride);
        }

        private void translateDepthToPixels()
        {
            byte[] pixels = new byte[height*width*4];

            //hardcoded locations to Blue, Green, Red (BGR) index positions       
            const int BlueIndex = 0;
            const int GreenIndex = 1;
            const int RedIndex = 2;

            //loop through all distances
            //pick a RGB color based on distance
            for (int depthIndex = 0, colorIndex = 0;
                depthIndex < depthData[FRAME_USED].Length && colorIndex < pixels.Length;
                depthIndex++, colorIndex += 4)
            {
                //Get the depth value in mm
                //It seems that three bits are used for player detection in some whay so we account for that
                //by bitshifting
                int depth = 0;
                for (int i = 0; i < totalFrames; i++)
                {
                    depth += depthData[i][depthIndex] >> PLAYER_INDEX_BITMASK_WIDTH;    
                }
                depth /= totalFrames;
                
                //TODO: Optimize this calculation!
                byte intensity = (byte)(255 - (255 * Math.Max(depth - MinDepthDistance, 0)
                / (MaxDepthDistanceOffset)));

                //equal coloring for monochromatic
                pixels[colorIndex + BlueIndex] = intensity;
                pixels[colorIndex + GreenIndex] = intensity;
                pixels[colorIndex + RedIndex] = intensity;
            }

            //TODO create an averaging scheme...
            depthPixels[FRAME_USED] = pixels;

        }

    }
}
