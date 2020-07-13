package realsense_camera;

public interface StreamSensor$Service extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "realsense_camera/StreamSensor$Service";
  static final java.lang.String _DEFINITION = "---\n\n# Point cloud data\nfloat32[] cloudXYZ # 480x640x3 (row-major order) XYZ camera coordinates, (0,0,0) are invalid points\nuint8[] cloudRGB # 480x640x3 (row-major order) corresponding RGB values\nfloat32[] rawDepth # 480x640x1 (row-major order) corresponding raw depth values\n\n# Camera parameters\nfloat32[] colorCamIntrinsics # 3x3 (row-major order) color camera intrinsics\nfloat32[] depthCamIntrinsics # 3x3 (row-major order) depth camera intrinsics\nfloat32[] depth2colorExtrinsics # 3x4 (row-major order) extrinsics from depth camera to color camera\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
}
