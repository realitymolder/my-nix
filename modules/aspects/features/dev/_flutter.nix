{ den, ... }:
{
  # den.aspects.developer.homeManager =
  #   {
  #     config,
  #     pkgs,
  #     lib,
  #     ...
  #   }:
  #   let
  #     # Android SDK composition using androidenv
  #     # This is fully declarative - no manual setup required
  #     # SDK tools, platform-tools, build-tools, and platforms are all included
  #     androidComposition = pkgs.androidenv.composeAndroidPackages {
  #       cmdLineToolsVersion = "19.0";
  #       platformToolsVersion = "36.0.0";
  #       buildToolsVersions = [ "36.0.0" ];
  #       platformVersions = [
  #         "34"
  #         "33"
  #       ];
  #       includeEmulator = false;
  #       includeSources = false;
  #       includeNDK = false;
  #       useGoogleAPIs = false;
  #       useGoogleTVAddOns = false;
  #       extraLicenses = [ "android-sdk-license" ];
  #     };

  #     # Path to the Android SDK in the nix store
  #     androidSdkDir = "${androidComposition.androidsdk}/libexec/android-sdk";
  #   in
  #   {
  #     home.packages = with pkgs; [
  #       flutter
  #       gradle
  #       chromium
  #       android-tools
  #       # The Android SDK from androidenv
  #       androidComposition.androidsdk
  #     ];

  #     home.sessionPath = [
  #       "${pkgs.android-tools}/bin"
  #       "${androidSdkDir}/platform-tools"
  #       "${androidSdkDir}/cmdline-tools/latest/bin"
  #       "${androidSdkDir}/build-tools/36.0.0"
  #     ];

  #     home.sessionVariables = {
  #       ANDROID_SDK_ROOT = androidSdkDir;
  #       ANDROID_HOME = androidSdkDir;
  #       JAVA_HOME = "${pkgs.openjdk17}";
  #       CHROME_EXECUTABLE = "${pkgs.chromium}/bin/chromium";
  #     };

  #     home.shellAliases = {
  #       flutter-doctor = "flutter doctor -v";
  #     };
  #   };
}
