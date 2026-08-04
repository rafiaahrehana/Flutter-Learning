# Fix Malformed NDK Download

The build is failing because the NDK directory at `C:\Users\Admin\AppData\Local\Android\sdk\ndk\28.2.13676358` is malformed (missing `source.properties`). This is likely due to an interrupted download.

## User Review Required

> [!IMPORTANT]
> I will attempt to delete the corrupted NDK folder. If this fails, you may need to manually delete the folder: `C:\Users\Admin\AppData\Local\Android\sdk\ndk\28.2.13676358`

## Proposed Changes

### Android SDK

#### [DELETE] Corrupted NDK Directory
I will remove the directory `C:\Users\Admin\AppData\Local\Android\sdk\ndk\28.2.13676358`.

## Verification Plan

### Manual Verification
- Run `flutter run` again to ensure the Android Gradle Plugin (AGP) automatically re-downloads a valid version of the NDK and completes the build.
