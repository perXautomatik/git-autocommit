can any of this be applied to single frames such as images or do they all require the multiframe format of video [SRGAN], [EDSR], and [ESRGAN],[ARCNN], [DnCNN], and [MemNet],[VBM4D], [VNLNet], and [DVDNet].[DeepCE], [DPE], and [ACE].

Copilot

Yes, some of these methods can be applied to single frames such as images, while others require the multiframe format of video. Here is a brief summary of the methods you mentioned:

- [SRGAN], [EDSR], and [ESRGAN] are **super resolution** methods that can enhance the resolution of single images or video frames. [They use generative adversarial networks (GANs) to generate realistic and high-quality images from low-resolution inputs](https://github.com/ShenZheng2000/LLIE_Survey)[1](https://github.com/ShenZheng2000/LLIE_Survey)[2](https://paperswithcode.com/task/video-enhancement)[3](https://www.mathworks.com/discovery/image-enhancement.html).
- [ARCNN], [DnCNN], and [MemNet] are **compression artifact reduction** methods that can remove the distortions caused by image or video compression. [They use convolutional neural networks (CNNs) to learn the mapping from distorted images to clean images](https://github.com/26hzhang/OptimizedImageEnhance)[4](https://github.com/26hzhang/OptimizedImageEnhance) .
- [VBM4D], [VNLNet], and [DVDNet] are **denoising** methods that can remove the noise from noisy images or videos. They use either block-matching or non-local self-similarity to exploit the redundancy across frames, and then apply filtering or CNNs to denoise the images .
- [DeepCE], [DPE], and [ACE] are **color enhancement** methods that can improve the color quality of images or videos. They use either CNNs or attention mechanisms to learn the illumination and color distribution of the images, and then adjust the contrast, brightness, and saturation accordingly .

I hope this helps you understand the differences and similarities between these methods. 😊

[1![](blob:https://www.bing.com/94ef0023-3cfa-4c2d-8ec1-f5c441ef01f4)github.com](https://github.com/ShenZheng2000/LLIE_Survey)[2![](blob:https://www.bing.com/0833c7fb-4b09-4e5f-a9d8-75570a8f5954)paperswithcode.com](https://paperswithcode.com/task/video-enhancement)[3![](blob:https://www.bing.com/873ebe81-bc8f-459c-9c3c-9c18f3987061)mathworks.com](https://www.mathworks.com/discovery/image-enhancement.html)[4![](blob:https://www.bing.com/94ef0023-3cfa-4c2d-8ec1-f5c441ef01f4)github.com](https://github.com/26hzhang/OptimizedImageEnhance)+2 mer

Du

does this methods / or any other method for that mather allow still frame image improvement by providing a secondary image, as most of this seems to be general models teached to guess what might have bin behind qualtiy reducing noise/artifacts in an image/video, while what i'm thinking of is basicly the possiblity to tell the model that it should look for improvement possiblityies from an external source, as if it was error correcting imag 1 from image 2

Copilot

I think what you are looking for is a method of image enhancement that uses a secondary image as a reference or a guidance. There are some methods that can do that, such as:

- **Image fusion**: This is the process of combining two or more images into a single image that preserves the salient features of each source image. [Some examples of image fusion methods are [multi-scale transform], [sparse representation], and [deep learning]](https://paperswithcode.com/task/image-enhancement)[1](https://paperswithcode.com/task/image-enhancement).
- **Image inpainting**: This is the process of filling in the missing or corrupted regions of an image using information from the surrounding pixels or another image. [Some examples of image inpainting methods are [patch-based], [PDE-based], and [deep learning]](https://link.springer.com/article/10.1007/s11831-021-09587-6)[2](https://link.springer.com/article/10.1007/s11831-021-09587-6).
- **Image style transfer**: This is the process of transferring the style or artistic effects of one image to another image, while preserving the content of the target image. [Some examples of image style transfer methods are [texture synthesis], [neural style], and [deep learning]](https://www.adobe.com/express/feature/image/enhance)[3](https://www.adobe.com/express/feature/image/enhance).

These are some of the methods that can enhance an image using a secondary image. Each method has its own applications, advantages, and limitations. If you want to learn more, you can read the papers and codes that I linked, or search for other related works. I hope this helps you find the method that suits your needs. 😊

[1![](blob:https://www.bing.com/0833c7fb-4b09-4e5f-a9d8-75570a8f5954)paperswithcode.com](https://paperswithcode.com/task/image-enhancement)[2![](blob:https://www.bing.com/745f36db-a218-417a-be6e-72c647250d82)link.springer.com](https://link.springer.com/article/10.1007/s11831-021-09587-6)[3![](blob:https://www.bing.com/c10ca947-a281-45cc-8745-ef7b4d735303)adobe.com](https://www.adobe.com/express/feature/image/enhance)[4![](blob:https://www.bing.com/c499a4aa-e767-4131-b817-ebb0a777d5e0)vmake.ai](https://vmake.ai/image-enhancer)[5![](blob:https://www.bing.com/953013d8-5a28-4444-9e20-6f1afa91995d)tensorpix.ai](https://tensorpix.ai/images)+3 mer

Du

can you tell me a bit more about ; image fusion through [multi-scale transform], [sparse representation], and [deep learning]. image inpainting through [patch-based], [PDE-based], and [deep learning]. image style transfer through [texture synthesis], [neural style], and [deep learning].

Copilot

Sure, I can tell you a bit more about these methods for image processing. Here is a brief summary of each one:

- **Image fusion** is the process of combining two or more images into a single image that preserves the salient features of each source image. Some examples of image fusion methods are:
    
    - : This method decomposes the source images into different scales or frequencies using a transform such as wavelet, contourlet, or shearlet. [Then, it applies a fusion rule to each scale or frequency band, and reconstructs the fused image using the inverse transform](https://gitlab.com/mbitsnbites/git-tools)[1](https://gitlab.com/mbitsnbites/git-tools).
    - : This method represents the source images as sparse linear combinations of atoms from a dictionary, which can be learned or predefined. [Then, it applies a fusion rule to the sparse coefficients, and reconstructs the fused image using the dictionary](https://github.com/newren/git-filter-repo)[2](https://github.com/newren/git-filter-repo).
    - : This method uses a neural network to learn a feature representation of the source images, and then generates the fused image from the features. [The neural network can be trained in a supervised, unsupervised, or self-supervised manner, and can use different architectures such as convolutional, recurrent, or generative](https://paperswithcode.com/task/image-inpainting)[3](https://paperswithcode.com/task/image-inpainting).
- **Image inpainting** is the process of filling in the missing or corrupted regions of an image using information from the surrounding pixels or another image. Some examples of image inpainting methods are:
    
    - : This method searches for similar patches in the known regions of the image or another image, and copies them to the missing regions. [The patches can be blended or optimized to reduce seams or artifacts](https://deepai.org/publication/patch-based-image-inpainting-with-generative-adversarial-networks)[4](https://deepai.org/publication/patch-based-image-inpainting-with-generative-adversarial-networks).
    - : This method solves a partial differential equation (PDE) that models the diffusion or propagation of pixel values from the known regions to the missing regions. [The PDE can be derived from variational principles or geometric constraints](https://www.tensorflow.org/tutorials/generative/style_transfer)[5](https://www.tensorflow.org/tutorials/generative/style_transfer).
    - : This method uses a neural network to learn a feature representation of the image, and then predicts the missing pixels from the features. [The neural network can be trained with a reconstruction loss, an adversarial loss, or a combination of both, and can use different architectures such as convolutional, recurrent, or generative](https://arxiv.org/abs/1505.07376)[6](https://arxiv.org/abs/1505.07376).
- **Image style transfer** is the process of transferring the style or artistic effects of one image to another image, while preserving the content of the target image. Some examples of image style transfer methods are:
    
    - : This method synthesizes a new image that matches the texture statistics of the style image, such as the gram matrix or the covariance matrix. [The texture synthesis can be done by sampling, optimization, or filtering](https://arxiv.org/pdf/1905.10974)[7](https://arxiv.org/pdf/1905.10974).
    - : This method uses a neural network to extract the content and style features of the target and style images, respectively. [Then, it optimizes a new image that minimizes the content and style losses, which measure the difference between the features of the new image and the target and style images](https://ietresearch.onlinelibrary.wiley.com/doi/epdf/10.1049/iet-ipr.2017.0104)[8](https://ietresearch.onlinelibrary.wiley.com/doi/epdf/10.1049/iet-ipr.2017.0104).
    - : This method uses a neural network to generate a stylized image from the target and style images. [The neural network can be trained in a supervised, unsupervised, or self-supervised manner, and can use different architectures such as convolutional, recurrent, or generative](https://link.springer.com/article/10.1007/s11263-023-01948-x)[9](https://link.springer.com/article/10.1007/s11263-023-01948-x).

I hope this helps you understand these methods better. 😊

[1![](blob:https://www.bing.com/f9204c9b-78c9-4b3a-b255-c2af971c8ff8)devblogs.microsoft.com](https://devblogs.microsoft.com/oldnewthing/20190916-00/?p=102892)[2![](blob:https://www.bing.com/0f4d3927-dd5b-49ff-8120-7a35d92ea07b)gitlab.com](https://gitlab.com/mbitsnbites/git-tools)[3![](blob:https://www.bing.com/94ef0023-3cfa-4c2d-8ec1-f5c441ef01f4)github.com](https://github.com/mbitsnbites/git-tools)[4![](blob:https://www.bing.com/94ef0023-3cfa-4c2d-8ec1-f5c441ef01f4)github.com](https://github.com/newren/git-filter-repo)[5![](blob:https://www.bing.com/9030e8b3-a9ec-45f6-8055-d1f093b86707)arxiv.org](https://arxiv.org/pdf/2108.09760.pdf)[6![](blob:https://www.bing.com/0833c7fb-4b09-4e5f-a9d8-75570a8f5954)paperswithcode.com](https://paperswithcode.com/task/image-inpainting)[7![](blob:https://www.bing.com/2f9fa394-b525-4bc9-9faa-0df980d520bd)daneshyari.com](https://daneshyari.com/article/preview/6941443.pdf)[8![](blob:https://www.bing.com/624f28f9-6a1d-4e22-a7a4-ba7b6ce7e25e)deepai.org](https://deepai.org/publication/patch-based-image-inpainting-with-generative-adversarial-networks)[9![](blob:https://www.bing.com/624f28f9-6a1d-4e22-a7a4-ba7b6ce7e25e)deepai.org](https://deepai.org/publication/texture-memory-augmented-deep-patch-based-image-inpainting)[10![](blob:https://www.bing.com/6ae962f4-2cfc-42bd-af5b-517e2f03800e)tensorflow.org](https://www.tensorflow.org/tutorials/generative/style_transfer)[11![](blob:https://www.bing.com/9030e8b3-a9ec-45f6-8055-d1f093b86707)arxiv.org](https://arxiv.org/pdf/2203.06328)[12![](blob:https://www.bing.com/9030e8b3-a9ec-45f6-8055-d1f093b86707)arxiv.org](https://arxiv.org/abs/1505.07376)[13![](blob:https://www.bing.com/624f28f9-6a1d-4e22-a7a4-ba7b6ce7e25e)deepai.org](https://deepai.org/publication/image-synthesis-and-style-transfer)[14![](blob:https://www.bing.com/9030e8b3-a9ec-45f6-8055-d1f093b86707)arxiv.org](https://arxiv.org/pdf/1905.10974)[15![](blob:https://www.bing.com/8fb7a2fc-64c0-4e1b-b9f8-d5748d3ad6eb)mdpi.com](https://www.mdpi.com/2079-9292/9/12/2162)[16![](blob:https://www.bing.com/0c79da62-3dea-497f-9176-164a437e7348)ietresearch.onlinelibrary.wiley.com](https://ietresearch.onlinelibrary.wiley.com/doi/epdf/10.1049/iet-ipr.2017.0104)[17![](blob:https://www.bing.com/745f36db-a218-417a-be6e-72c647250d82)link.springer.com](https://link.springer.com/chapter/10.1007/978-981-15-6315-7_22)[18![](blob:https://www.bing.com/745f36db-a218-417a-be6e-72c647250d82)link.springer.com](https://link.springer.com/article/10.1007/s11263-023-01948-x)[19![](blob:https://www.bing.com/bff45f6e-b863-4247-b9ab-bf75223030c7)doi.org](https://doi.org/10.3390/electronics9122162)[20![](blob:https://www.bing.com/bff45f6e-b863-4247-b9ab-bf75223030c7)doi.org](https://doi.org/10.1016/j.image.2018.05.015)+18 mer

Du

Is there any program that can help me do Image fusion through Multi-scale Transform Or sparse representation? And is there any program that can help me do Image inpainting through the patch-based OR pde-based method?

Copilot

There are some programs that can help you do image fusion and inpainting using the methods you mentioned. Here are some examples:

- For image fusion using multi-scale transform or sparse representation, you can try the following programs:
    - [: This is a MATLAB program that implements a fusion method that combines different MSTs and SRs, and uses an image energy approach to measure the activity level of the sparse coefficients](https://ietresearch.onlinelibrary.wiley.com/doi/epdf/10.1049/iet-ipr.2017.0104)[1](https://ietresearch.onlinelibrary.wiley.com/doi/epdf/10.1049/iet-ipr.2017.0104).
    - [: This is a MATLAB program that implements a fusion framework that decomposes the source images into low-pass and high-pass bands using MSTs, and then fuses the low-pass bands using SRs and the high-pass bands using absolute values](https://daneshyari.com/article/preview/528069.pdf)[2](https://daneshyari.com/article/preview/528069.pdf).
    - [: This is a Python program that implements the same fusion framework as the previous one, but using different MSTs and SRs](https://www.infona.pl/resource/bwmeta1.element.elsevier-18c40036-3ecb-3a4c-9adf-5594aed0c038)[3](https://www.infona.pl/resource/bwmeta1.element.elsevier-18c40036-3ecb-3a4c-9adf-5594aed0c038).

![Inpainting](https://www.bing.com/th?id=OSK.ba176143202b6481fde8f3d0157eb422&pid=cdx&w=200&h=128&c=7&rs=1)

![](https://www.bing.com/th?id=OSK.ba176143202b6481fde8f3d0157eb422&pid=cdx&w=200&h=74&c=7)

- For image inpainting using patch-based or PDE-based method, you can try the following programs:
    - [: This is a MATLAB program that implements an inpainting method that synthesizes new textures from existing ones using patch matching and blending](https://ietresearch.onlinelibrary.wiley.com/doi/epdf/10.1049/iet-ipr.2017.0104)[4](https://arxiv.org/pdf/1605.01576v1.pdf).
    - [: This is a survey paper that reviews various inpainting methods, including patch-based and PDE-based ones, and provides some MATLAB codes for them](https://ietresearch.onlinelibrary.wiley.com/doi/epdf/10.1049/iet-ipr.2017.0104)[5](https://arxiv.org/pdf/1909.06399).
    - [: This is a C++ program that implements an inpainting method that improves the patch matching and texture synthesis by using a gradient-based similarity measure and a texture direction constraint](https://ietresearch.onlinelibrary.wiley.com/doi/epdf/10.1049/iet-ipr.2017.0104)[6](https://ieeexplore.ieee.org/document/8833395/).
    - [: This is a MATLAB program that implements an inpainting method that uses PDEs to interpolate the missing pixels based on the image smoothness and geometry](https://ietresearch.onlinelibrary.wiley.com/doi/epdf/10.1049/iet-ipr.2017.0104)[7](https://www.mathworks.com/company/technical-articles/applying-modern-pde-techniques-to-digital-image-restoration.html).
    - [: This is a book that introduces various PDE techniques for image inpainting, and provides some MATLAB codes for them](https://ietresearch.onlinelibrary.wiley.com/doi/epdf/10.1049/iet-ipr.2017.0104)[8](https://www.cambridge.org/core/books/partial-differential-equation-methods-for-image-inpainting/introduction/C76852FDD0C21ADBD82151B55C88B321).

# Fast Optimized Image/Video Enhancement Methods

![Authour](https://img.shields.io/badge/Author-Zhang%20Hao%20(Isaac%20Changhau)-blue.svg) ![](https://img.shields.io/badge/Java-1.8-brightgreen.svg) ![](https://img.shields.io/badge/OpenCV-3.2.0-brightgreen.svg)

It is a set of image/video enhancement methods, implemented by Java, to tackle several common tasks, such as dehazing, denoising, underwater [backscatter](https://en.wikipedia.org/wiki/Backscatter) removal, low illuminance enhancement, featuring, smoothing and etc.

**NOTE that** this repository is the integration of several repositories of Image/Video processing on [my GitHub](https://github.com/IsaacChanghau), and those standalone repositories will be **deprecated** later.
- RemoveBackScatter -- **Deleted**, its zip file is available here: [[link]](/standalone_repos/RemoveBackScatter-master.zip).
- OptimizedContrastEnhance -- **Deleted**, its zip file is available here: [[link]](/standalone_repos/OptimizedContrastEnhance-master.zip).
- [ImageEnhanceViaFusion](https://github.com/IsaacChanghau/ImageEnhanceViaFusion) -- will be deprecated, its zip file is available here: [[link]](/standalone_repos/ImageEnhanceViaFusion-master.zip)
- HazeRemovalByDarkChannelPrior -- **Deleted**, its zip file is available here: [[link]](/standalone_repos/HazeRemovalByDarkChannelPrior-master.zip)
- ALTMRetinex -- **Deleted**, its zip file is available here: [[link]](/standalone_repos/ALTMRetinex-master.zip)
- Image-Enhance-via-Retinex-and-DT-CWT -- **Deleted**, its zip file is available here: [[link]](/standalone_repos/Image-Enhance-via-Retinex-and-DT-CWT-master.zip)

## Description
This Java project contains five different models for image/video enhancement methods as we as the MATLAB codes (in [`matlab`](/matlab/) directory) for each of them.
* [ALTMRetinex](/src/main/java/com/isaac/models/ALTMRetinex.java) is inspired by [Adaptive Local Tone Mapping Based on Retinex for HDR Image](http://koasas.kaist.ac.kr/bitstream/10203/172985/1/73275.pdf), which is published by Ahn, Hyunchan. **Details and Results are shown here**: [[link]](/matlab/ALTMRetinex/).
* [DarkChannelPriorDehaze](/src/main/java/com/isaac/models/DarkChannelPriorDehaze.java) is the algorithm proposed in [Single Image Haze Removal Using Dark Channel Prior](http://kaiminghe.com/publications/pami10dehaze.pdf), published by [Kaiming He](http://kaiminghe.com/). **Details and Results are shown here**: [[link]](/matlab/DarkChannelPriorDehaze/README.md).
* [FusionEnhance](/src/main/java/com/isaac/models/FusionEnhance.java) is implemented according to the method described in [Enhancing Underwater Images and Videos by Fusion](http://perso.telecom-paristech.fr/~Gousseau/ProjAnim/2015/ImageSousMarine.pdf), published by Cosmin Ancuti. **Details and Results are shown here**: [[link]](/matlab/FusionEnhance/).
* [OptimizedContrastEnhance](/src/main/java/com/isaac/models/OptimizedContrastEnhance.java) is implemented according to the method described in [Optimized Contrast Enhancement for Real-time Image and Video Dehazing](http://www.sciencedirect.com/science/article/pii/S1047320313000242), published by Jin-Hwan Kim. **Details and Results are shown here**: [[link]](/matlab/OptimizedContrastEnhance/).
* [RemoveBackScatter](/src/main/java/com/isaac/models/RemoveBackScatter.java), Removing Backscatter to Enhance the Visibility of Underwater Object, is a fast and effective backscatter removal and enhancement method to enhance the underwater image/video as well as light hazel images. **Details and Results are shown here**: [[link]](/matlab/RemoveBackScatter/).

Despite the above methods implemented in both Java and MATLAB, below contains several image enhancement and underwater restoration algorithms implemented in MATLAB (*They will be implemented in Java in the future*).
* [AutomaticRedChannelRestoration](/matlab/AutomaticRedChannelRestoration.zip) is implemented on the basis of [Automatic Red-Channel Underwater Image Restoration](http://www.sciencedirect.com/science/article/pii/S1047320314001874).
* [RetinexBasedRestoration](/matlab/RetinexBasedRestoration.zip) is the method proposed in [A Retinex-based Enhancing Approach for Single Underwater Image](http://smartdsp.xmu.edu.cn/memberpdf/fuxueyang/1.pdf).
* [AutomaticRecoveryAtmosphericLight](/matlab/AutomaticRecoveryAtmosphericLight.zip) is the method proposed in [Automatic Recovery of the Atmospheric Light in Hazy Images](http://www.cs.huji.ac.il/~werman/Papers/iiii2013.pdf).
* [DehazingCorrectionAndDecomposition](/matlab/DehazingCorrectionAndDecomposition.zip) is implemented on the basis of [Single Image Dehazing with White Balance Correction and Image Decomposition](http://ieeexplore.ieee.org/abstract/document/6411690/?reload=true).
* [EnhanceViaRetinexDTCWT](/matlab/EnhanceViaRetinexDTCWT/), Image Enhancement Based on Retinex and Dual-Tree Complex Wavelet Transform, which is a efficient and effective method for enhancement of low-illuminance image/video. **Details and Results are shown here**: [[link]](/matlab/EnhanceViaRetinexDTCWT/).

## Requirements
* [OpenCV](http://opencv.org/). To make the OpenCV can work with JAVA IDE, like IntelliJ or Eclipse, you may need to follow the guide of [[Install OpenCV for Java]](https://isaacchanghau.github.io/2017/04/10/Installing-OpenCV-for-Java/) to setup OpenCV.
* [ImShow-Java-OpenCV](https://github.com/master-atul/ImShow-Java-OpenCV), a plain image display codes implemented by OpenCV Java version (This codes is already included in the project).

## Results
### Adaptive Local Tone Mapping Based on Retinex for HDR Image
<img src="/matlab/ALTMRetinex/images/original-horses.png" width = "425" height = "320" align=center />  <img src="/matlab/ALTMRetinex/images/altm-horses.png" width = "425" height = "320" align=center />

### Image Enhancement Based on Retinex and Dual-Tree Complex Wavelet Transform
<img src="/matlab/EnhanceViaRetinexDTCWT/images/whitehouse.png" width = "425" height = "320" align = center />  <img src="/matlab/EnhanceViaRetinexDTCWT/images/result.png" width = "425" height = "320" align = center />

### Single Image Haze Removal Using Dark Channel Prior
<img src="/matlab/DarkChannelPriorDehaze/images/train.png" width = "425" height = "320" align=center />  <img src="/matlab/DarkChannelPriorDehaze/images/trainDehaze.png" width = "425" height = "320" align=center />

### Optimized Contrast Enhancement for Real-time Image and Video Dehazing
<img src="/matlab/OptimizedContrastEnhance/images/org-ny.png" width = "425" height = "320" align=center />  <img src="/matlab/OptimizedContrastEnhance/images/dehaze-ny.png" width = "425" height = "320" align=center />

### Enhancing Underwater Images and Videos by Fusion
<img src="/matlab/FusionEnhance/images/org-3.png" width = "425" height = "350" align=center />  <img src="/matlab/FusionEnhance/images/enh-3.png" width = "425" height = "350" align=center />

### Removing Backscatter to Enhance the Visibility of Underwater Object
<img src="/matlab/RemoveBackScatter/images/Fusion_Output.png" width = "850" height = "300" align=center />

Du

could i possibly use imagejs; multiview-reconstruction in the world bigdataviewer to fuse two or more images?

Copilot

According to the web search results, it seems that you can use ImageJ’s Multiview-Reconstruction plugin and the BigDataViewer plugin to fuse two or more images. These plugins are designed for multiview microscopy images, but they may also work for other types of images. You can find more information and instructions on how to use these plugins in the links below:

- : This page describes the features and usage of the Multiview-Reconstruction plugin, which enables users to register, fuse, deconvolve and view multiview microscopy images.
- : This page describes the features and usage of the BigDataViewer plugin, which is a re-slicing browser for terabyte-sized multi-view image sequences.

I hope this helps you with your image processing tasks. 😊

[1![](blob:https://www.bing.com/fd0f9fb4-6ed7-4d8f-85ce-02244f1ad31e)imagej.net](https://imagej.net/plugins/multiview-reconstruction)[2![](blob:https://www.bing.com/fd0f9fb4-6ed7-4d8f-85ce-02244f1ad31e)imagej.net](https://imagej.net/plugins/bdv/)[3![](blob:https://www.bing.com/37743168-4671-4bd3-8c10-9a7bde08b875)imagej.github.io](https://imagej.github.io/imagej-wiki-static/Multiview-Reconstruction.html)

[![](https://imagej.net/media/icons/fiji.svg)](https://imagej.net/software/fiji) 

# Multiview-Reconstruction

 

![](https://imagej.net/media/icons/info.svg)

The content of this page has not been vetted since shifting away from MediaWiki. If you’d like to help, check out the [how to help guide](https://imagej.net/events/wiki-grand-opening/how-to-help)!

## Download[](https://imagej.net/plugins/multiview-reconstruction#download)

The integration of the **Multiview Reconstruction** and the [BigDataViewer](https://imagej.net/plugins/bdv) is available through the Fiji Updater. Simply update Fiji and the Multiview-Reconstruction pipeline will be available under Plugins › Multiview Reconstruction › Multiview Reconstruction Application. The source code is available [on GitHub](https://github.com/bigdataviewer/SPIM_Registration/), please also report feature requests & bugs there.

To enable GPU hardware accelerated processing, you might want to download the **native CUDA code** for:

- Separable Convolution: Used for the Difference-of-Gaussian segmentation, available on [GitHub](https://github.com/StephanPreibisch/SeparableConvolutionCUDALib)
- Non-Separable Convolution: Used for the [MultiView Deconvolution](https://imagej.net/plugins/multi-view-deconvolution), available on [GitHub](https://github.com/StephanPreibisch/FourierConvolutionCUDALib)

## Citation[](https://imagej.net/plugins/multiview-reconstruction#citation)

Please note that the SPIM registration plugin available through Fiji, is based on a publication. If you use it successfully for your research please be so kind to cite our work:

- S. Preibisch, S. Saalfeld, J. Schindelin and P. Tomancak (2010) “Software for bead-based registration of selective plane illumination microscopy data”, _Nature Methods_, **7**(6):418-419. [Webpage](http://www.nature.com/nmeth/journal/v7/n6/full/nmeth0610-418.html) [PDF](https://imagej.net/media/nmeth0610-418.pdf) [Supplement](https://imagej.net/media/nmeth0610-418-s1.pdf)
- S. Preibisch, F. Amat, E. Stamataki, M. Sarov, R.H. Singer, E. Myers and P. Tomancak (2014) “Efficient Bayesian-based Multiview Deconvolution”, _Nature Methods_, **11**(6):645-648. [Webpage](http://www.nature.com/nmeth/journal/v11/n6/full/nmeth.2929.html)

For technical details about the registration method and SPIM imaging see also [SPIM Registration Method](https://imagej.net/plugins/spim-registration/method).

## Introduction & Overview[](https://imagej.net/plugins/multiview-reconstruction#introduction--overview)

The **Multiview Reconstruction** software package enables users to _register, fuse, deconvolve and view_ multiview microscopy images (first box). The software is designed for lightsheet fluorescence microscopy (LSFM, second box), but is applicable to any form of three or higher dimensional imaging modalities like confocal timeseries or multicolor stacks.

Interactive viewing and annotation of the data is provided by integration with Tobias Pietzsch’s [BigDataViewer](https://imagej.net/plugins/bdv). Both projects share a common XML data model to describe multiview datasets.

### History[](https://imagej.net/plugins/multiview-reconstruction#history)

This software package is the successor to the [SPIM Registration](https://imagej.net/plugins/spim-registration) package. While the SPIM Registration will continue to live within Fiji for the time being, we will mostly offer support only for this new software package. It has all the functionality the SPIM Registration offered, but is much more flexible and supports many more types of registration, fusion and data handling.

### Examples[](https://imagej.net/plugins/multiview-reconstruction#examples)

|What does 'multiview' mean exactly?|
|---|
|When we speak of **multiview** datasets we generally mean that per timepoint there _n_ image stacks, which could be different:<br><br>- Channels<br>- Illumination Directions<br>- Rotation Angles<br><br>Note that even if _n_=1, i.e. there is only one stack per timepoint, this software can be used to stabilize the timeseries (drift-correction).|

Two examples of multiview datasets reconstructed with this software package are shown as YouTube videos below. Both datasets were registered using the bead-based registration ([_Nature Methods_, **7**(6):418-419](http://www.nature.com/nmeth/journal/v7/n6/full/nmeth0610-418.html)) and the Multiview Deconvolution ([_Nature Methods_, **11**(6):645-648](http://www.nature.com/nmeth/journal/v11/n6/full/nmeth.2929.html)), which are part of this software package. Please check out the Citation section for information on how to cite this software package.

The first video shows a developing _Drosophila_ embryo expressing His-YFP in all cells. The entire embryogenesis was acquired using the Zeiss Demonstrator B. The top row shows the multiview deconvolution of this seven-view dataset, the lower row the content-based fusion.

|Lightsheet fluorescence microscopy|
|---|
|Lightsheet fluorescence microscopy entered the world of modern biology in 2004 when **Selective Plane Illumination Microscopy** ([**SPIM**](http://www.sciencemag.org/content/305/5686/1007)) was published. It allows _in toto_ imaging of large specimens by acquiring image stacks from multiple angles with high spatial and temporal resolution. Many impressive variations and extensions have been published, some of them using new variations or entirely new naming schemes:<br><br>- OpenSPIM<br>- Digital scanned laser light-sheet fluorescence microscopy (DSLM)<br>- DSLM and structured illumination (DSLM-SI)<br>- Two-photon versions of SPIM and DSLM<br>- MuVi-SPIM<br>- Two-photon light sheet microscopy (2P-LSM)<br>- Bessel-Beam illumination and DSLM<br>- Ultramicroscopy<br>- Orthogonal-plane fluorescence optical sectioning microscopy (OPFOS)<br>- Multidirectional selective plane illumination microscopy (mSPIM)<br>- Thin-sheet laser imaging microscopy (TSLIM)<br>- ...<br><br>During the 2012 Lightsheet fluorescence microscopy meeting in Dublin, organized by Emmanuel Reynaud, it was voted to summarize most of these developments under the name of **Lightsheet fluorescence microscopy (LSFM)**.|

The second video shows a fixed _C. elegans_ larvae in L1 stage expressing Lamin-GFP and stained with Hoechst. The four-view dataset was acquired using the Zeiss Lightsheet Z.1 microscope. It illustrates the increase in resolution that can be achieved through multiview imaging combined with multiview deconvolution. The top row shows one of the four input views, the bottom row the result of the multiview deconvolution.

## Detailed Tutorials[](https://imagej.net/plugins/multiview-reconstruction#detailed-tutorials)

Using this software package consists of several steps. Please note that this software is more flexible and that this order is just a suggestion of how to use it in a more-or-less standard case.

- **[Dataset Definition](https://imagej.net/plugins/mvr-definedataset)**
    - The first step in every reconstruction is to define the dataset and thereby create the XML file. This has to be done only once, all consecutive steps are based on this definition, i.e. the XML file.

- **[Resave the dataset as HDF5/TIFF](https://imagej.net/plugins/mvr-resavedataset)**
    - Once the dataset is defined, you might want to resave all the image data as HDF5 (to be able to view it using the [BigDataViewer](https://imagej.net/plugins/bdv)) or simply as TIFF to enable fast loading of the image data. Also note that those two formats are the only ones that allow to extend the dataset/XML with newly fused data.

- **[Detect Interest Points](https://imagej.net/plugins/MVR-InterestPointDetection)**
    - Based on an existing dataset definition (XML file), the first step is typically to find interest points in the images that will be used for registration. In this step it is possible to look for multiple types of detections, e.g. fluorescent beads, nuclei or membrane markers. All of them can be stored in parallel.

- **[Interest Point Registration](https://imagej.net/plugins/MVR-InterestPointRegistration)**
    - Once interest points are detected, they can be used to register/align multiple views over time. To find corresponding detection the registration module supports the following modules:
        - _Rotation-invariant matching_ using fluorescent beads (no prior transformation knowledge necessary)
        - _Translation-invariant matching_ using any kind of detections (an approximate knowledge of the rotation is required, e.g. 45 degrees around the x-axis. Check the [Tools-Section](https://imagej.net/plugins/multiview-reconstruction#tools) for how to provide approximate transformations.)
        - _Precise matching_ using the Iterative-Closest Point (ICP) algorithm (the dataset needs to be aligned using for example any of the above methods).
    - The different views (or timepoints) can be aligned using _Translation_, _Rigid_ or _Affine_ transformation models. We also support _regularized transformation models_ developed by Stephan Saafeld.
    - Alignment over time can be performed in different ways
        - If there is no drift, every timepoint can be simply registered individually. Please note that it is possible to register each timepoint and later on treat it as a _rigid unit_. In this way it is possible to first register each timpoint using an _affine_ transformation model and consecutively stabilize over time just using a _translation_ model.
        - A reference timepoint that is individually registered first can serve as basis for all other timepoints. This kind of alignment usually only works with external landmarks like fluorescent beads.
        - Alternatively, it is possible to align timepoints using a sliding window of +-n timepoints, in which all views are matched against each other. This will work on any kind of detections.
    - In general, it is possible to stack up as many rounds of transformations as you want. They will be summarized in a list transformations that are concatenated to one single _affine_ transformation before fusion/deconvolution/viewing. A typical list of transformations looks like:
        - Apply calibration (difference in xy and z resolution per pixel)
        - Affine bead-based registration
        - ICP registration based on nuclei

- **[Fusion/Deconvolution](https://imagej.net/plugins/mvr-fusiondeconvolution)**
    - Once the dataset is entirely aligned it can be fused or deconvolved into a single image per timepoint and channel. Deconvolution requires the knowledge of point spread functions (PSF’s), which can be extracted from matched beads directly or can be provided by the user.
    - Alternatively, there is no need to fuse the data and you can interactively look at the data using the [BigDataViewer](https://imagej.net/plugins/bdv) if you resaved it as HDF5. You can still do that now after the registration is complete.

### Tools[](https://imagej.net/plugins/multiview-reconstruction#tools)

Apart from this potential processing outline there are many **tools** available to help process multiview timelapse datasets.

- **[Apply Transformations](https://imagej.net/plugins/MVR-ApplyTransformations)**
    - This tool can be used to apply any kind of transformations to individual views, or all views at once. This allows the user to specify a know rotation of different acquisition angles around an axis or to simply re-orient the entire dataset after the registration is complete.

- **[Duplicate Transformations](https://imagej.net/plugins/MVR-DuplicateTransformations)**
    - It can be used to apply transformations that have been computed (or defined) for a certain subset of views/timepoints to other views/timepoints. Typical scenarios where this is required are:
        - Fluorescent beads are only visible in one channel, but the user wants to do apply the same transformation for all other channels
        - The user registered one timepoint and wants to apply the same transformation for all other timepoints

- **[Display View](https://imagej.net/plugins/MVR-DisplayView)**
    - It allows to simply load and display one of the views as defined in the dataset

- **[Specify Calibration](https://imagej.net/plugins/MVR-SpecifyCalibration)**
    - This enables the user to change the calibration of individual or all views after having defined them. Note that all registrations need to be recomputed if it should reflect the new calibration.

- **[Visualize Detections](https://imagej.net/plugins/MVR-VisualizeDetections)**
    - Detections as identified by [Detect Interest Points](https://imagej.net/plugins/MVR-InterestPointDetection) can be visualized. It is possible to visualize all detections or only those that are found to be corresponding with other detections and were therefore used for registration. This helps to identify potential misalignments if corresponding detections are not equally distributed around the sample as they should be. One can also load the input view at the same time to overlay the detections with the image data

## Video Tutorials & Scientific Talks[](https://imagej.net/plugins/multiview-reconstruction#video-tutorials--scientific-talks)

During the [EMBO Practical Course on Lightsheet Microscopy](http://openspim.org/EMBO_practical_course_Light_sheet_microscopy) two of my talks were recorded:

### Talk: Registration of Multiview Lightsheet Fluorescence Microscopy (LSFM) Images[](https://imagej.net/plugins/multiview-reconstruction#talk-registration-of-multiview-lightsheet-fluorescence-microscopy-lsfm-images)

This 30-minute talk by [Stephan Preibisch](https://imagej.net/people/StephanPreibisch) covers the theory behind registration of multiview lightsheet microscopy data and it also quickly addresses the problem of multiview fusion & deconvolution.

### Tutorial: Fiji Multiview Lightsheet Reconstruction Software[](https://imagej.net/plugins/multiview-reconstruction#tutorial-fiji-multiview-lightsheet-reconstruction-software)

This one hour tutorial by [Stephan Preibisch](https://imagej.net/people/StephanPreibisch) covers the basic usage of this multiview reconstruction software for Fiji. Documentation, source code, bug reports and feature requests can be found [on SourceForge](https://sourceforge.net/projects/multiviewreconstruction/).

## Comments, Bugs & Feature Requests[](https://imagej.net/plugins/multiview-reconstruction#comments-bugs--feature-requests)

There is a webpage on [GitHub](https://github.com/bigdataviewer/SPIM_Registration) and [SourceForge](https://sourceforge.net/projects/multiviewreconstruction/) dedicated to this project. It contains links to this documentation, the source code and other related things. All comments, bugs & feature requests should be posted in the [GitHub issues](https://github.com/bigdataviewer/SPIM_Registration/issues) or the [SourceForge discussion board](https://sourceforge.net/p/multiviewreconstruction/discussion/?source=navbar).

## Downloading example dataset[](https://imagej.net/plugins/multiview-reconstruction#downloading-example-dataset)

There is a 7-angle SPIM dataset of _Drosophila_ available for download [here](http://fly.mpi-cbg.de/preibisch/nm/HisYFP-SPIM.zip). Other datasets can be provided upon request.

## System requirements[](https://imagej.net/plugins/multiview-reconstruction#system-requirements)

Multi-view SPIM datasets are typically rather large, therefore it is recommended to use the registration plugin on a computer with a lot of RAM. The minimal requirement for the example dataset is **at least 4Gb** of memory however we recommend an **16Gb+** system, ideally at least **64Gb** and a CUDA capable graphics card. You may need to increase the Fiji memory limit by going to Edit › Options › Memory & Threads.

## Cluster processing[](https://imagej.net/plugins/multiview-reconstruction#cluster-processing)

See the dedicated [page](https://imagej.net/plugins/automated-workflow-for-parallel-multiview-reconstruction) describing an automated workflow for processing SPIM data from Lighsheet.Z1 and OpenSPIM on the MPI-CBG cluster.