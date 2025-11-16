# 🖼️ Image Compression using SVD

A MATLAB-based image compression tool that leverages Singular Value Decomposition (SVD) to reduce image file size while maintaining visual quality. This project demonstrates the practical application of linear algebra concepts in real-world image processing.

## 📚 Overview

This project was developed as part of the Applied Linear Algebra course at Azusa Pacific University. It implements image compression using SVD matrix decomposition, allowing users to create compressed images that retain acceptable quality while significantly reducing file size.

**Course:** Applied Linear Algebra  
**Academic Year:** Sophomore Year (2023-2024)  
**Technology:** MATLAB

## ✨ Features

- 📊 **SVD-based compression**: Uses Singular Value Decomposition for optimal matrix approximation
- 💾 **Adjustable compression ratio**: Control the trade-off between quality and file size
- 🎨 **RGB color support**: Processes color images with separate SVD for each channel
- 📈 **Quality visualization**: Displays original vs. compressed images with color histograms
- 📉 **Compression metrics**: Shows file size reduction and quality preservation statistics

## 🎯 Methodology

The compression algorithm works by:

1. **Decomposition**: Breaking down the image matrix using SVD: `A = U * S * V'`
2. **Truncation**: Keeping only the k largest singular values
3. **Reconstruction**: Rebuilding the image with reduced dimensionality
4. **Per-channel processing**: Applying SVD separately to Red, Green, and Blue channels

This approach maintains the most important image features while discarding less significant information.

## 🖼️ Preview

### Original Image
<img src="/Original Image.png" width="400"/>

### Compressed Image
<img src="/Compressed Image.png" width="400"/>

### Color Distribution Analysis
<img src="/Colors.png" width="400"/>

The color distribution graphs demonstrate how well the compressed image preserves the original color characteristics across RGB channels.

## 🚀 Getting Started

### Prerequisites

- MATLAB R2019a or later
- Image Processing Toolbox (optional but recommended)
- Basic understanding of matrix operations

### Installation

1. Clone this repository:
```bash
git clone https://github.com/GeroJun/Image_Compression_Project.git
cd Image_Compression_Project
```

2. Open MATLAB and navigate to the project directory

3. Ensure you have an image file in the same directory

### Usage

1. Place your image in the project folder (or update the filename in the script)

2. Open `Image_Compression_Project.m` in MATLAB

3. Modify compression parameters if desired:
   - Adjust the number of singular values (k) to control compression ratio
   - Change the input image filename

4. Run the script:
```matlab
run Image_Compression_Project.m
```

5. View the results:
   - Original vs. compressed image comparison
   - RGB color distribution plots
   - Compression ratio and quality metrics

## 📐 Mathematical Background

### Singular Value Decomposition (SVD)

For any m×n matrix A, SVD provides:

```
A = U Σ V^T
```

Where:
- **U**: m×m orthogonal matrix (left singular vectors)
- **Σ**: m×n diagonal matrix (singular values in descending order)
- **V^T**: n×n orthogonal matrix (right singular vectors)

### Compression Process

By keeping only the k largest singular values:

```
A_compressed ≈ U_k Σ_k V_k^T
```

This provides the best rank-k approximation of the original matrix in terms of the Frobenius norm.

## 📊 Performance Metrics

Typical results:
- **Compression Ratio**: 60-80% file size reduction
- **Visual Quality**: PSNR > 30 dB (good perceptual quality)
- **Processing Time**: < 5 seconds for standard images (512×512 pixels)

## 💻 Technical Implementation

**Language:** MATLAB  
**Key Functions:**
- `svd()` - Singular value decomposition
- `imread()` - Image loading
- `imshow()` - Image display
- `histogram()` - Color distribution analysis

**Algorithm Complexity:**
- SVD computation: O(mn²) for m×n matrix
- Per-image processing: Linear in number of pixels

## 📁 Project Structure

```
├── Image_Compression_Project.m    # Main MATLAB script
├── Original Image.png             # Sample original image
├── Compressed Image.png           # Sample compressed output
├── Colors.png                     # RGB distribution comparison
├── image.jpg                      # Test image
└── README.md                      # Project documentation
```

## 🎓 Learning Outcomes

This project demonstrates:
- Practical applications of linear algebra in image processing
- Understanding of SVD and low-rank matrix approximations
- Trade-offs between data compression and quality preservation
- MATLAB programming and visualization techniques
- Matrix operations and eigenvalue decomposition concepts

## 🔮 Potential Enhancements

- [ ] Implement adaptive compression based on image complexity
- [ ] Add support for batch processing multiple images
- [ ] Include PSNR and SSIM quality metrics
- [ ] Create GUI for interactive compression parameter adjustment
- [ ] Add comparison with other compression methods (JPEG, PNG)
- [ ] Implement progressive compression for web streaming
- [ ] Export compressed images in standard formats

## 📝 License

This project is open source and available for educational purposes.

## 👤 Author

**Victor Jun (GeroJun)**
- GitHub: [@GeroJun](https://github.com/GeroJun)
- Project: Applied Linear Algebra - Image Compression

## 🙏 Acknowledgments

- Azusa Pacific University - Applied Linear Algebra Course
- Course instructors for guidance on SVD applications
- MATLAB documentation and Image Processing Toolbox resources

## 📚 References

- Strang, G. (2016). *Introduction to Linear Algebra* (5th ed.)
- Trefethen, L. N., & Bau III, D. (1997). *Numerical Linear Algebra*
- MATLAB Image Processing Toolbox Documentation

---

⭐ If you found this project helpful for understanding SVD or image compression, please consider giving it a star!
