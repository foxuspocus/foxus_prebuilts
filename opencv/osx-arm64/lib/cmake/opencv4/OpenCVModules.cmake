# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.6)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.20)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget zlib libjpeg-turbo libtiff libwebp libopenjp2 libpng IlmImf libprotobuf quirc tegra_hal ittnotify ade opencv_core opencv_flann opencv_imgproc opencv_intensity_transform opencv_ml opencv_phase_unwrapping opencv_photo opencv_plot opencv_quality opencv_reg opencv_surface_matching opencv_xphoto opencv_alphamat opencv_dnn opencv_dnn_superres opencv_features2d opencv_fuzzy opencv_hfs opencv_img_hash opencv_imgcodecs opencv_line_descriptor opencv_saliency opencv_text ocv.3rdparty.avfoundation opencv_videoio opencv_wechat_qrcode opencv_barcode opencv_calib3d opencv_datasets opencv_highgui opencv_mcc opencv_objdetect opencv_rapid opencv_rgbd opencv_shape opencv_structured_light opencv_video opencv_videostab opencv_xfeatures2d opencv_ximgproc opencv_xobjdetect opencv_aruco opencv_bgsegm opencv_bioinspired opencv_ccalib opencv_dnn_objdetect opencv_dpm opencv_gapi opencv_optflow opencv_sfm correspondence multiview numeric simple_pipeline opencv_stitching opencv_superres opencv_tracking opencv_stereo)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target zlib
add_library(zlib STATIC IMPORTED)

# Create imported target libjpeg-turbo
add_library(libjpeg-turbo STATIC IMPORTED)

# Create imported target libtiff
add_library(libtiff STATIC IMPORTED)

set_target_properties(libtiff PROPERTIES
  INTERFACE_LINK_LIBRARIES "zlib"
)

# Create imported target libwebp
add_library(libwebp STATIC IMPORTED)

# Create imported target libopenjp2
add_library(libopenjp2 STATIC IMPORTED)

set_target_properties(libopenjp2 PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "OPJ_STATIC"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target libpng
add_library(libpng STATIC IMPORTED)

set_target_properties(libpng PROPERTIES
  INTERFACE_LINK_LIBRARIES "zlib"
)

# Create imported target IlmImf
add_library(IlmImf STATIC IMPORTED)

set_target_properties(IlmImf PROPERTIES
  INTERFACE_LINK_LIBRARIES "zlib"
)

# Create imported target libprotobuf
add_library(libprotobuf STATIC IMPORTED)

# Create imported target quirc
add_library(quirc STATIC IMPORTED)

# Create imported target tegra_hal
add_library(tegra_hal STATIC IMPORTED)

# Create imported target ittnotify
add_library(ittnotify STATIC IMPORTED)

set_target_properties(ittnotify PROPERTIES
  INTERFACE_LINK_LIBRARIES "dl"
)

# Create imported target ade
add_library(ade STATIC IMPORTED)

# Create imported target opencv_core
add_library(opencv_core STATIC IMPORTED)

set_target_properties(opencv_core PROPERTIES
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>;\$<LINK_ONLY:zlib>;-framework OpenCL;/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.3.sdk/System/Library/Frameworks/Accelerate.framework;\$<LINK_ONLY:-lm>;\$<LINK_ONLY:-ldl>;\$<LINK_ONLY:ittnotify>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_flann
add_library(opencv_flann STATIC IMPORTED)

set_target_properties(opencv_flann PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_core;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_imgproc
add_library(opencv_imgproc STATIC IMPORTED)

set_target_properties(opencv_imgproc PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_core;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_intensity_transform
add_library(opencv_intensity_transform STATIC IMPORTED)

set_target_properties(opencv_intensity_transform PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_ml
add_library(opencv_ml STATIC IMPORTED)

set_target_properties(opencv_ml PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_core;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_phase_unwrapping
add_library(opencv_phase_unwrapping STATIC IMPORTED)

set_target_properties(opencv_phase_unwrapping PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_photo
add_library(opencv_photo STATIC IMPORTED)

set_target_properties(opencv_photo PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_plot
add_library(opencv_plot STATIC IMPORTED)

set_target_properties(opencv_plot PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_quality
add_library(opencv_quality STATIC IMPORTED)

set_target_properties(opencv_quality PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_ml;opencv_core;opencv_imgproc;opencv_ml;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_reg
add_library(opencv_reg STATIC IMPORTED)

set_target_properties(opencv_reg PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_surface_matching
add_library(opencv_surface_matching STATIC IMPORTED)

set_target_properties(opencv_surface_matching PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_core;opencv_flann;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_xphoto
add_library(opencv_xphoto STATIC IMPORTED)

set_target_properties(opencv_xphoto PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_photo;opencv_core;opencv_imgproc;opencv_photo;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_alphamat
add_library(opencv_alphamat STATIC IMPORTED)

set_target_properties(opencv_alphamat PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_dnn
add_library(opencv_dnn STATIC IMPORTED)

set_target_properties(opencv_dnn PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>;\$<LINK_ONLY:libprotobuf>;/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.3.sdk/System/Library/Frameworks/Accelerate.framework;\$<LINK_ONLY:-lm>;\$<LINK_ONLY:-ldl>"
)

# Create imported target opencv_dnn_superres
add_library(opencv_dnn_superres STATIC IMPORTED)

set_target_properties(opencv_dnn_superres PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_ml;opencv_quality;opencv_dnn;opencv_core;opencv_imgproc;opencv_ml;opencv_quality;opencv_dnn;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_features2d
add_library(opencv_features2d STATIC IMPORTED)

set_target_properties(opencv_features2d PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_core;opencv_flann;opencv_imgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_fuzzy
add_library(opencv_fuzzy STATIC IMPORTED)

set_target_properties(opencv_fuzzy PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_hfs
add_library(opencv_hfs STATIC IMPORTED)

set_target_properties(opencv_hfs PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_img_hash
add_library(opencv_img_hash STATIC IMPORTED)

set_target_properties(opencv_img_hash PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_imgcodecs
add_library(opencv_imgcodecs STATIC IMPORTED)

set_target_properties(opencv_imgcodecs PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>;\$<LINK_ONLY:libjpeg-turbo>;\$<LINK_ONLY:libwebp>;\$<LINK_ONLY:libpng>;\$<LINK_ONLY:libtiff>;\$<LINK_ONLY:libopenjp2>;\$<LINK_ONLY:IlmImf>;\$<LINK_ONLY:zlib>;-framework AppKit"
)

# Create imported target opencv_line_descriptor
add_library(opencv_line_descriptor STATIC IMPORTED)

set_target_properties(opencv_line_descriptor PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_saliency
add_library(opencv_saliency STATIC IMPORTED)

set_target_properties(opencv_saliency PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_text
add_library(opencv_text STATIC IMPORTED)

set_target_properties(opencv_text PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_dnn;opencv_features2d;opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_dnn;opencv_features2d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target ocv.3rdparty.avfoundation
add_library(ocv.3rdparty.avfoundation INTERFACE IMPORTED)

set_target_properties(ocv.3rdparty.avfoundation PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "HAVE_AVFOUNDATION"
  INTERFACE_LINK_LIBRARIES "-framework Cocoa;-framework Accelerate;-framework AVFoundation;-framework CoreGraphics;-framework CoreMedia;-framework CoreVideo;-framework QuartzCore"
)

# Create imported target opencv_videoio
add_library(opencv_videoio STATIC IMPORTED)

set_target_properties(opencv_videoio PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_imgcodecs;opencv_core;opencv_imgproc;opencv_imgcodecs;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>;\$<LINK_ONLY:ocv.3rdparty.avfoundation>"
)

# Create imported target opencv_wechat_qrcode
add_library(opencv_wechat_qrcode STATIC IMPORTED)

set_target_properties(opencv_wechat_qrcode PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_dnn;opencv_core;opencv_imgproc;opencv_dnn;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>;\$<LINK_ONLY:Iconv::Iconv>"
)

# Create imported target opencv_barcode
add_library(opencv_barcode STATIC IMPORTED)

set_target_properties(opencv_barcode PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_dnn;opencv_core;opencv_imgproc;opencv_dnn;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_calib3d
add_library(opencv_calib3d STATIC IMPORTED)

set_target_properties(opencv_calib3d PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>;/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.3.sdk/System/Library/Frameworks/Accelerate.framework;\$<LINK_ONLY:-lm>;\$<LINK_ONLY:-ldl>"
)

# Create imported target opencv_datasets
add_library(opencv_datasets STATIC IMPORTED)

set_target_properties(opencv_datasets PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_text;opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_text;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_highgui
add_library(opencv_highgui STATIC IMPORTED)

set_target_properties(opencv_highgui PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_imgcodecs;opencv_videoio;opencv_core;opencv_imgproc;opencv_imgcodecs;opencv_videoio;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>;\$<LINK_ONLY:zlib>;-framework Cocoa"
)

# Create imported target opencv_mcc
add_library(opencv_mcc STATIC IMPORTED)

set_target_properties(opencv_mcc PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_objdetect
add_library(opencv_objdetect STATIC IMPORTED)

set_target_properties(opencv_objdetect PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>;\$<LINK_ONLY:quirc>"
)

# Create imported target opencv_rapid
add_library(opencv_rapid STATIC IMPORTED)

set_target_properties(opencv_rapid PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_calib3d;opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_calib3d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_rgbd
add_library(opencv_rgbd STATIC IMPORTED)

set_target_properties(opencv_rgbd PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_calib3d;opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_calib3d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_shape
add_library(opencv_shape STATIC IMPORTED)

set_target_properties(opencv_shape PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_calib3d;opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_calib3d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_structured_light
add_library(opencv_structured_light STATIC IMPORTED)

set_target_properties(opencv_structured_light PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_phase_unwrapping;opencv_features2d;opencv_calib3d;opencv_core;opencv_flann;opencv_imgproc;opencv_phase_unwrapping;opencv_features2d;opencv_calib3d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_video
add_library(opencv_video STATIC IMPORTED)

set_target_properties(opencv_video PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_videostab
add_library(opencv_videostab STATIC IMPORTED)

set_target_properties(opencv_videostab PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_photo;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_videoio;opencv_calib3d;opencv_video;opencv_core;opencv_flann;opencv_imgproc;opencv_photo;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_videoio;opencv_calib3d;opencv_video;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_xfeatures2d
add_library(opencv_xfeatures2d STATIC IMPORTED)

set_target_properties(opencv_xfeatures2d PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_features2d;opencv_calib3d;opencv_shape;opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_features2d;opencv_calib3d;opencv_shape;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_ximgproc
add_library(opencv_ximgproc STATIC IMPORTED)

set_target_properties(opencv_ximgproc PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_calib3d;opencv_video;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_calib3d;opencv_video;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_xobjdetect
add_library(opencv_xobjdetect STATIC IMPORTED)

set_target_properties(opencv_xobjdetect PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_calib3d;opencv_objdetect;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_calib3d;opencv_objdetect;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_aruco
add_library(opencv_aruco STATIC IMPORTED)

set_target_properties(opencv_aruco PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_calib3d;opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_calib3d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_bgsegm
add_library(opencv_bgsegm STATIC IMPORTED)

set_target_properties(opencv_bgsegm PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;opencv_video;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;opencv_video;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_bioinspired
add_library(opencv_bioinspired STATIC IMPORTED)

set_target_properties(opencv_bioinspired PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_imgcodecs;opencv_videoio;opencv_highgui;opencv_core;opencv_imgproc;opencv_imgcodecs;opencv_videoio;opencv_highgui;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_ccalib
add_library(opencv_ccalib STATIC IMPORTED)

set_target_properties(opencv_ccalib PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_imgcodecs;opencv_videoio;opencv_calib3d;opencv_highgui;opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_imgcodecs;opencv_videoio;opencv_calib3d;opencv_highgui;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_dnn_objdetect
add_library(opencv_dnn_objdetect STATIC IMPORTED)

set_target_properties(opencv_dnn_objdetect PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_dnn;opencv_imgcodecs;opencv_videoio;opencv_highgui;opencv_core;opencv_imgproc;opencv_dnn;opencv_imgcodecs;opencv_videoio;opencv_highgui;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_dpm
add_library(opencv_dpm STATIC IMPORTED)

set_target_properties(opencv_dpm PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_videoio;opencv_calib3d;opencv_highgui;opencv_objdetect;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_videoio;opencv_calib3d;opencv_highgui;opencv_objdetect;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_gapi
add_library(opencv_gapi STATIC IMPORTED)

set_target_properties(opencv_gapi PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;opencv_video;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;opencv_video;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>;\$<LINK_ONLY:ade>;\$<LINK_ONLY:ittnotify>"
)

# Create imported target opencv_optflow
add_library(opencv_optflow STATIC IMPORTED)

set_target_properties(opencv_optflow PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_calib3d;opencv_video;opencv_ximgproc;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_calib3d;opencv_video;opencv_ximgproc;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_sfm
add_library(opencv_sfm STATIC IMPORTED)

set_target_properties(opencv_sfm PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_features2d;opencv_imgcodecs;opencv_calib3d;opencv_shape;opencv_xfeatures2d;opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_features2d;opencv_imgcodecs;opencv_calib3d;opencv_shape;opencv_xfeatures2d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>;\$<LINK_ONLY:correspondence>;\$<LINK_ONLY:multiview>;\$<LINK_ONLY:numeric>;\$<LINK_ONLY:glog::glog>;\$<LINK_ONLY:gflags_shared>;\$<LINK_ONLY:simple_pipeline>"
)

# Create imported target correspondence
add_library(correspondence STATIC IMPORTED)

set_target_properties(correspondence PROPERTIES
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:glog::glog>;\$<LINK_ONLY:multiview>;\$<LINK_ONLY:opencv_imgcodecs>;Eigen3::Eigen"
)

# Create imported target multiview
add_library(multiview STATIC IMPORTED)

set_target_properties(multiview PROPERTIES
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:glog::glog>;\$<LINK_ONLY:numeric>;Eigen3::Eigen;\$<LINK_ONLY:Ceres::ceres>"
)

# Create imported target numeric
add_library(numeric STATIC IMPORTED)

set_target_properties(numeric PROPERTIES
  INTERFACE_LINK_LIBRARIES "Eigen3::Eigen"
)

# Create imported target simple_pipeline
add_library(simple_pipeline STATIC IMPORTED)

set_target_properties(simple_pipeline PROPERTIES
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:multiview>;\$<LINK_ONLY:Ceres::ceres>"
)

# Create imported target opencv_stitching
add_library(opencv_stitching STATIC IMPORTED)

set_target_properties(opencv_stitching PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_features2d;opencv_calib3d;opencv_shape;opencv_xfeatures2d;opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_features2d;opencv_calib3d;opencv_shape;opencv_xfeatures2d;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_superres
add_library(opencv_superres STATIC IMPORTED)

set_target_properties(opencv_superres PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_videoio;opencv_calib3d;opencv_video;opencv_ximgproc;opencv_optflow;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_videoio;opencv_calib3d;opencv_video;opencv_ximgproc;opencv_optflow;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_tracking
add_library(opencv_tracking STATIC IMPORTED)

set_target_properties(opencv_tracking PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_plot;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_text;opencv_videoio;opencv_calib3d;opencv_datasets;opencv_highgui;opencv_video;opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_plot;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_text;opencv_videoio;opencv_calib3d;opencv_datasets;opencv_highgui;opencv_video;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

# Create imported target opencv_stereo
add_library(opencv_stereo STATIC IMPORTED)

set_target_properties(opencv_stereo PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_plot;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_text;opencv_videoio;opencv_calib3d;opencv_datasets;opencv_highgui;opencv_video;opencv_tracking;opencv_core;opencv_flann;opencv_imgproc;opencv_ml;opencv_plot;opencv_dnn;opencv_features2d;opencv_imgcodecs;opencv_text;opencv_videoio;opencv_calib3d;opencv_datasets;opencv_highgui;opencv_video;opencv_tracking;\$<LINK_ONLY:Eigen3::Eigen>;\$<LINK_ONLY:tegra_hal>"
)

if(CMAKE_VERSION VERSION_LESS 3.0.0)
  message(FATAL_ERROR "This file relies on consumers using CMake 3.0.0 or greater.")
endif()

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/OpenCVModules-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
