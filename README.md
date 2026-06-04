# EmotionCheck — Color Palette Analysis & Emotional Design Tool

Part of the **emotion-check** repository — an Emotion Aware Prototype for understanding how colors impact user perception and emotional response.

A real-time, interactive tool for analyzing and validating color palettes against WCAG accessibility standards, color harmony principles, emotional design principles, and practical UI design needs.

## Features

### 🎨 Comprehensive Palette Analysis
- **Contrast Matrix**: Automatically calculates WCAG contrast ratios for all color combinations
- **Color Harmony Detection**: Identifies complementary, analogous, triadic, and warm/cool color relationships
- **Emotional Response Scoring**: Evaluate color psychology and emotional impact (part of the Emotion Aware Prototype)
- **Accessibility Scoring**: Get an A+ to D grade based on contrast, harmony, visual balance, and emotional coherence
- **Live UI Preview**: See your palette in action with a sample website interface
- **Vision Simulation**: Test how your palette appears to people with different types of color blindness (Deuteranopia, Protanopia, Tritanopia)

### ⚡ Interactive Features
- Add and remove custom colors on the fly
- Toggle between 3 sample UI roles: Background, Card/Surface, Primary/CTA
- Real-time updates as you adjust colors
- Color input via picker or hex code entry
- Instant visual feedback with animated score ring

### 📋 Preset Palettes
Jump-start your analysis with pre-built palettes:
- **Material**: Google Material Design inspired
- **Earth**: Warm, natural earth tones
- **Neon Dark**: High-contrast cyberpunk aesthetic
- **Pastel**: Soft, muted contemporary palette

### 💡 Smart Recommendations
Get actionable suggestions including:
- WCAG AA/AAA compliance warnings
- Color similarity alerts
- Saturation and brightness balance tips
- Color-blindness accessibility warnings
- Palette size optimization guidance

## Getting Started

### Prerequisites
Ensure you're on the correct branch of the **emotion-check** repository:
```
git clone https://github.com/[your-org]/emotion-check.git
git checkout [emotion-aware-branch]
```

### Installation
No installation required! This is a standalone HTML file.

1. **Navigate** to the `chroma-check` folder in the emotion-check repository
2. **Open** `chromacheck.html` in any modern web browser (Chrome, Firefox, Safari, Edge)
3. **Start analyzing** your color palettes for emotional impact and accessibility

### Usage

#### Basic Workflow
1. Enter colors into the palette via:
   - Clicking the color swatch to use the color picker
   - Typing hex codes directly into the input fields
2. Click **"Analyze Palette"** to run the full analysis
3. Review results across the different analysis cards:
   - **Contrast Matrix**: See all pairwise contrast ratios
   - **Live UI Preview**: Preview your palette on a sample website
   - **Vision Simulation**: Check accessibility for color-blind users
   - **Recommendations**: Get suggestions for improvement

#### Adding/Removing Colors
- Click **"+ Add Color"** to include up to 8 colors in your palette
- Click the **✕** button on any color (after the first two) to remove it

#### Assigning Roles
Use the dropdowns above the UI preview to assign which color serves as:
- **Background**: Page background color
- **Card / Surface**: Secondary containers and surfaces
- **Primary / CTA**: Buttons, links, and calls-to-action

#### Vision Simulation
Switch between vision modes to understand how color-blind users perceive your palette:
- **Normal**: Standard vision
- **Deuteranopia**: Red-green color blindness (most common)
- **Protanopia**: Red-green color blindness variant
- **Tritanopia**: Blue-yellow color blindness

## About the Emotion Aware Prototype

This tool is part of the **emotion-check** project, which explores how design choices—particularly color—influence user emotions and perception. The scoring system integrates:

- **Technical accessibility** (WCAG compliance)
- **Color harmony** (aesthetic coherence)
- **Emotional signaling** (psychological color associations)

Use this tool to understand not just *if* your palette works, but *how it makes people feel*.

## Understanding Your Score

EmotionCheck grades your palette on a 100-point scale:

| Grade | Score | Assessment |
|-------|-------|------------|
| A+ | 80+ | Excellent contrast, harmony, and balance |
| A | 65-79 | Strong palette with minor improvement areas |
| B | 50-64 | Acceptable, but consider adjustments |
| C | 35-49 | Significant accessibility or harmony issues |
| D | <35 | Multiple concerns to address |

### Score Breakdown
- **Contrast (40 pts)**: Percentage of color pairs passing WCAG AA (4.5:1 ratio)
- **Color Harmony (30 pts)**: Hue diversity, relationship strength, and emotional coherence
- **Visual Balance (30 pts)**: Saturation variation, brightness distribution, and emotional tone consistency

## WCAG Compliance

The tool checks contrast ratios against these standards:

| Standard | Ratio | Use Case |
|----------|-------|----------|
| **AAA** | 7:1+ | Small text, best practice |
| **AA** | 4.5:1+ | Normal text, minimum compliance |
| **Fail** | <4.5:1 | Not compliant for body text |

**Note**: Contrast ratios are calculated for all foreground-background pairs. The tool recommends avoiding failed pairs for readable text.

## Color Input Formats

ChromaCheck accepts hex color codes:
- Valid: `#1a1a2e`, `#FF5733`, `#abc` (shorthand)
- Color picker integration for easy visual selection

## Browser Compatibility

Works on all modern browsers:
- Chrome 90+
- Firefox 88+
- Safari 14+
- Edge 90+
- Opera 76+

## Tips for Best Results

1. **Start with 3-5 colors** for a cohesive palette
2. **Include light and dark anchors** (white/light gray, black/dark color) for contrast
3. **Verify against real text sizes** — the preview shows sample UI at 13px+
4. **Test with all vision simulations** before finalizing
5. **Aim for AA or AAA** grades for high accessibility
6. **Use colorblind simulations** even if you're not color-blind (helps catch issues)

## Technical Details

- **No external dependencies**: Pure HTML, CSS, and vanilla JavaScript
- **Emotion Aware Engine**: Integrates color psychology principles with accessibility metrics
- **Fast analysis**: All calculations run locally in your browser
- **No data collection**: Your colors and emotional responses are never sent to a server
- **Responsive design**: Works on desktop, tablet, and mobile

### Color Science
The tool uses:
- **WCAG 2.1 standard** for contrast ratio calculation
- **Relative luminance** formula for brightness calculation
- **HSL color space** for harmony analysis
- **CVD simulation matrices** (Brettel et al.) for color-blindness visualization

## Limitations

- Limited to 8 colors per palette (by design — simplifies cohesion)
- Vision simulation uses mathematical approximations, not perfect simulations
- Preview is illustrative; actual implementation may vary based on design system
- Contrast is tested on solid backgrounds only

## Future Ideas

Potential enhancements:
- Export palette as CSS, JSON, or Figma format
- Save/load custom palettes
- Gradient and transparency analysis
- A11y dark mode detection
- Offline PWA support

## License

This tool is provided as part of the **emotion-check** project for educational and professional use.

## Feedback & Issues

Found a bug or have a suggestion? Please file an issue in the emotion-check repository with detailed descriptions of:
- What you were trying to do
- What emotional response or design goal you had
- What you expected
- What happened instead

---

**Happy color analyzing and emotion prototyping! 🎨💭**