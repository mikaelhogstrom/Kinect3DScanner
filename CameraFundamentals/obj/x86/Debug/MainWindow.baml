   M S B A M L   `   `   `  ����^  ZMicrosoft.Samples.Kinect.WpfViewers, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null�^clr-namespace:Microsoft.Samples.Kinect.WpfViewers;assembly=Microsoft.Samples.Kinect.WpfViewers#Microsoft.Samples.Kinect.WpfViewers  5   	    CameraFundamentals#   CameraFundamentals.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   mmy^clr-namespace:Microsoft.Samples.Kinect.WpfViewers;assembly=Microsoft.Samples.Kinect.WpfViewers     5   	   -   5          � Title$  
MainWindow��5   	   $	��669��6   $	��800��6)   .��5      � $	��669��6   .+�5	   
   =   7Microsoft.Samples.Kinect.WpfViewers.KinectSensorChooser  -   5        $��kinectSensorChooser1��5	   P   $
��Left=�6!   $��
12,258,0,0q�6<   $	��Top=�6l   $	��320��6�   $	��207��6�   ;   5Microsoft.Samples.Kinect.WpfViewers.KinectDepthViewer  5
   
   -   5        $��kinectDepthViewer1��5
   N   $
��Left=�6   $��
338,12,0,0q�6:   $	��Top=�6h   $	��240��6�   $	��320��6�   5   /Microsoft.Samples.Kinect.WpfViewers.ImageViewer   Kinect 6�   ��  �� ElementName$ kinectSensorChooser1�� �� Path$ Kinect��� 5   
   -   5        $��imgColorPhoto��5   L   $	��240��6   $
��Left=�6   $��
12,258,0,0q�68   $
��Fill=�6a   $	��Top=�6p   $	��320��6�   ;   5Microsoft.Samples.Kinect.WpfViewers.KinectColorViewer  5   
   -   5        $��kinectColorViewer1��5   M   $
��Left=�6   $��	12,12,0,0q�6:   $	��Top=�6g   $	��240��6   $	��320��6�    6�   �� $ kinectSensorChooser1��$ Kinect��� 5   
   -   5        $��btnTakePhoto��5   b   $��
Take photo��6   $��42��6&   $
��Left=�62   $��582,504,0,0q�6M   $	��Top=�6v   $��75��6�   6�   �� 5   
   -   5        $��imgDepthPhoto��5   M   $	��240��6   $
��Left=�6   $��338,258,0,0q�68   $
��Fill=�6b   $	��Top=�6q   $	��320��6�   5      5      