# Pavan Kumar — City-to-Home Three.js Portfolio

A pastel, story-led portfolio that takes visitors from a bright neighbourhood street into a welcoming 3D home. Each room presents a different part of Pavan's professional journey.

## Explore the house

- **Front porch:** cinematic developer reveal, presenter character and introduction.
- **Living room:** About Pavan and career profile.
- **Study:** education and internship journey.
- **Workshop:** programming, AI/ML, Generative AI and full-stack skills.
- **Project gallery:** NeuroDetect, AgriSolve, SyntheMedBot, ORVIONAR, EduSmart and Face Emotion Recognition.
- **Library:** credentials and achievements.
- **Garden:** contact details and professional links.

## Run locally

No build step is required. On Windows, double-click `start-portfolio.bat`.

Or run from the repository root:

```bash
python -m http.server 5500
```

Open http://127.0.0.1:5500.

Three.js 0.187.0 is loaded through an import map from jsDelivr, so the 3D scene requires an internet connection. The semantic HTML portfolio and local assets remain available if WebGL or the CDN is unavailable.

## Deploy with GitHub Pages

A workflow is included at `.github/workflows/pages.yml`. In **Settings → Pages**, choose **GitHub Actions** as the build and deployment source. Pushes to `main` will then publish the static portfolio.

## Project evidence

NeuroDetect is connected to its live website: https://neurodetect.lovable.app/. The project card requests an on-demand screenshot through Thum.io and keeps a direct live-site link. The screenshot request depends on that third-party service; an illustrative fallback is labelled if capture fails.

Other project preview images are illustrative UI concepts, not actual screenshots of the deployed applications. Replace them with genuine captures as they become available. Their live URLs are centralised in `assets/project-config.js`.

## Included media

- `assets/pavan-developer-reveal.mp4` — supplied six-second reveal video, web-optimised to 540 × 960.
- `assets/pavan-presenter.webp` — transparent presenter image converted from the supplied PNG for faster loading.
- `assets/pavan-kumar-resume.pdf` — supplied resume, optimised for web delivery.
- `assets/intro-poster.jpg` — poster image for the reveal video.
- `assets/project-previews/` — six illustrative project UI previews.
- `assets/credential-previews/` — three labelled credential/award summary plaques.

## Accessibility and performance

Portfolio information remains in semantic HTML outside the decorative 3D canvas. The site includes skip navigation, keyboard focus styling, reduced-motion handling, a WebGL fallback and capped renderer pixel ratio on smaller screens.

## Privacy

This repository is public and includes your resume, email/phone details, portrait and intro video. Review those materials before sharing the repository widely. Never commit API keys, passwords, private documents or secrets.
