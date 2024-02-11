// Define constants for the paths to various asset directories.
const String imagePath = "assets/images"; // Path to the directory containing general image assets.
const String imageSVGPath = "assets/svgs"; // Path to the directory containing SVG image assets.
const String imagePngPath = "assets/images/png"; // Path to the directory containing PNG image assets.
const String imageTempPath = "assets/temp"; // Path to the directory containing temporary image assets.
const String lottiePath = "assets/lottie"; // Path to the directory containing Lottie animation files.

/// `AssetsManager` is a utility class that provides easy access to specific asset paths.
///
/// It uses the directory paths defined above to construct the full paths to specific assets.
class AssetsManager {
  // Path to the 'empty_search.json' Lottie animation file.
  static const String emptySearch = "$lottiePath/empty_search.json";

  // Path to the application's logo image ('aamar_logo.png').
  static const String appLogo = "$imagePath/aamar_logo.png";
}