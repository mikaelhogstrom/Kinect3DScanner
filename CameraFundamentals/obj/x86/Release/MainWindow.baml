   M S B A M L   `   `   `  ���� ^  ZMicrosoft.Samples.Kinect.WpfViewers, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null�^clr-namespace:Microsoft.Samples.Kinect.WpfViewers;assembly=Microsoft.Samples.Kinect.WpfViewers#Microsoft.Samples.Kinect.WpfViewers   CameraFundamentals#   CameraFundamentals.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     mmy^clr-namespace:Microsoft.Samples.Kinect.WpfViewers;assembly=Microsoft.Samples.Kinect.WpfViewers     -     � Title$  
MainWindow��$	��669��$	��800��.��� $	��669��.+�=   7Microsoft.Samples.Kinect.WpfViewers.KinectSensorChooser  -   $��kinectSensorChooser1��$
��Left=�$��
12,258,0,0q�$	��Top=�$	��320��$	��207��;   5Microsoft.Samples.Kinect.WpfViewers.KinectDepthViewer  -   $��kinectDepthViewer1��$
��Left=�$��
338,12,0,0q�$	��Top=�$	��240��$	��320��5   /Microsoft.Samples.Kinect.WpfViewers.ImageViewer   Kinect ��  �� ElementName$ kinectSensorChooser1�� �� Path$ Kinect��� -   $��imgColorPhoto��$	��240��$
��Left=�$��
12,258,0,0q�$
��Fill=�$	��Top=�$	��320��;   5Microsoft.Samples.Kinect.WpfViewers.KinectColorViewer  -   $��kinectColorViewer1��$
��Left=�$��	12,12,0,0q�$	��Top=�$	��240��$	��320�� �� $ kinectSensorChooser1��$ Kinect��� -   $��btnTakePhoto��$��
Take photo��$��42��$
��Left=�$��582,504,0,0q�$	��Top=�$��75���� -   $��imgDepthPhoto��$	��240��$
��Left=�$��338,258,0,0q�$
��Fill=�$	��Top=�$	��320��