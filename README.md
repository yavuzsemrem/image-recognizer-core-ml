<h1 align="center">
  <br>
  <a href="#"><img src="https://raw.githubusercontent.com/yavuzsemrem/image-recognizer-core-ml/refs/heads/main/Media/Adsız%20tasarım.png" alt="Foursquare" width="200"></a>
  <br>
  Image Recognizer Core ML
  <br>
</h1>

<h4 align="center">An image recognition app built with Swift and Core ML that allows users to upload images and analyzes them to predict the objects they contain. The app uses a Core ML model to provide probability-based predictions on what the object in the image might be.</h4>

<div>
<p align="center">  <a href="https://www.instagram.com/_yavuzsemrem/" target="_blank" rel="noreferrer" style="text-decoration: none;"><img src="https://skillicons.dev/icons?i=instagram" width="35" height="35";/></a>  <a href="https://www.linkedin.com/in/yavuz-selim-emrem-65baa0273/" target="_blank" rel="noreferrer" style="text-decoration: none;"><img src="https://cdn.iconscout.com/icon/free/png-512/free-linkedin-2752135-2284952.png?f=avif&w=512" width="35" height="35" /></a>  <a href="https://x.com/s3limm06" target="_blank" rel="noreferrer" style="text-decoration: none;"><img src="https://static.vecteezy.com/system/resources/previews/042/148/611/non_2x/new-twitter-x-logo-twitter-icon-x-social-media-icon-free-png.png" width="35" height="35" /></a>  <a href="mailto:selimemrem@gmail.com" target="_blank" rel="noreferrer" style="text-decoration: none;"><img src="https://upload.wikimedia.org/wikipedia/commons/7/7e/Gmail_icon_%282020%29.svg" width="35" height= "35" /></a>  <a href="https://open.spotify.com/user/00a5n7i8o5xwfdbq9kz6i8wra?si=36cfe13b9bbb4b85" target="_blank" rel="noreferrer" style="text-decoration: none;"><img src="https://cdn3.emoji.gg/emojis/SpotifyLogo.png" width="35" height="35" /></a>  <a href="https://steamcommunity.com/profiles/76561199496950614/" target="_blank" rel="noreferrer" style="text-decoration: none;"><img src="https://cdn.freebiesupply.com/images/large/2x/steam-logo-transparent.png" width="35" height="35" /></a>  <a href="https://discord.com/users/s3limm#1529" target="_blank" rel="noreferrer" style="text-decoration: none;"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/socials/discord.svg" width="35" height="35" /></a>  </p>
</div>

<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#technologies-used">Technologies Used</a> •
  <a href="#documentation">Documentation</a> •
  <a href="#license">License</a>
</p>

![Intro GIF](https://github.com/yavuzsemrem/image-recognizer-core-ml/blob/main/Media/Screen%20Recording%202024-10-02%20at%2017.51.50.gif?raw=true)

## Key Features

- Image recognition using Core ML: Users can upload an image, and the app will analyze it using a pre-trained MobileNetV2 Core ML model.

- Probability-based predictions: The app provides a percentage-based likelihood for what the object in the image might be.

- Real-time analysis: Once an image is uploaded, the Core ML model processes it and returns predictions instantly.

- Fast and lightweight: The MobileNetV2 model is optimized for mobile devices, allowing efficient object detection.

- Supports multiple image formats: Users can upload various image formats, and the app processes them seamlessly.



## How To Use

To run this project on your local machine, you'll need to have **Xcode** installed. Then, follow these steps:

```bash
# Clone this repository
$ gh repo clone yavuzsemrem/image-recognizer-core-ml

# Go into the repository
$ cd image-recognizer-core-ml

# Open the project in Xcode
$ open image-recognizer-core-ml.xcodeproj

# Run the app
$ xcodebuild

````

## Technologies Used

- <b>Swift</b> - Main programming language.

- <b>Swift UIKit</b> - For UI components.

- <b>MobileNetV2 Core ML models</b> - The MobileNetv2 architecture trained to classify the dominant object in a camera frame or image.

- <b>Core ML</b> - Integrate machine learning models into your app.

- <b>CocoaPods</b> - For managing dependencies.

- <b>Swift Package Manager</b> - For adding and managing Swift libraries.

## Documentation

- [Core ML](https://developer.apple.com/documentation/coreml/) - Comprehensive documentation for using Core ML.
- [MobileNetV2 docs](https://developer.apple.com/documentation/coreml/integrating-a-core-ml-model-into-your-app) - Official guide on how to integrate MobileNetV2 Core ML models in iOS apps.
- [Core ML models list](https://developer.apple.com/machine-learning/models/) - Acces all of the Core ML models list that Apple shared.


## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/yavuzsemrem/image-recognizer-core-ml?tab=MIT-1-ov-file) file for details.
