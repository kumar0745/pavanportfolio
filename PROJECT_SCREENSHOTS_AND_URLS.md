# Project URLs and screenshot sources

## NeuroDetect — connected
- Live website: https://neurodetect.lovable.app/
- Project card and detail dialog request a live website screenshot through Thum.io:
  `https://image.thum.io/get/width/1200/crop/760/noanimate/https://neurodetect.lovable.app/`
- The screenshot is generated on demand in the visitor's browser. Availability, branding and rate limits depend on the third-party service. If capture fails, the portfolio falls back to its locally bundled, explicitly labelled illustrative preview; the direct live link remains available.
- No local live screenshot is included because the build environment could not retrieve the public site.

## Other projects
AgriSolve, SyntheMedBot and Face Emotion Recognition still use illustrative UI previews. Replace them only after a verified live URL or actual screenshot is supplied.

ORVIONAR and EduSmart have live links configured, but their images remain illustrative previews until genuine captures are added.

## Replace a preview with a local capture
1. Capture the public website at desktop resolution (for example, 1440 × 900).
2. Save it as `assets/project-screenshots/<project>-overview.webp`.
3. Update the matching `screenshot` property in `assets/project-config.js`.
4. Keep the direct `liveUrl` so visitors can open the real application.
