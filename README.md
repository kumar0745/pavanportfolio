# Pavan Kumar — Pastel City-to-Home Three.js Portfolio

A pastel story-led developer portfolio that starts on a bright neighbourhood street and takes visitors into a 3D home. Its rooms present Pavan's profile, education, internships, skills, projects, credentials and contact information.

## Repository status

This repository currently contains the deployment scaffolding. Download the complete release ZIP and run the included `PUSH_TO_GITHUB.bat` to copy the full HTML, CSS, JavaScript, Three.js scene, video, presenter image, resume and project previews into this repository.

## Upload the complete portfolio

1. Download and extract the complete portfolio release ZIP.
2. Open the extracted `pavan-kumar-portfolio` folder.
3. Double-click `PUSH_TO_GITHUB.bat`.
4. Complete GitHub sign-in if Git Credential Manager opens a browser.
5. Wait for the script to report `SUCCESS`.

The script pushes the complete application to `main`. Vercel is already linked to this repository and should automatically start a deployment after the full source commit is pushed.

## Vercel build configuration

- Framework: Other / static site
- Root directory: repository root
- Install command: `npm install --ignore-scripts --no-audit --no-fund`
- Build command: `npm run build`
- Output directory: `dist`
- Production branch: `main`

The build script copies the root website assets into `dist/` and checks required files. See [VERCEL_DEPLOYMENT.md](VERCEL_DEPLOYMENT.md).

## Portfolio features

- Cinematic developer reveal and presenter character.
- Pastel city-to-home 3D journey with separate rooms and interactive doors.
- Study, workshop, project gallery, library and contact garden.
- NeuroDetect live project: https://neurodetect.lovable.app/
- Other project detail panels, technology marks, credentials and resume.
- Responsive layout and reduced-motion support.

## Screenshot accuracy

The NeuroDetect card uses an on-demand Thum.io screenshot request; availability depends on that external service. Other project preview images are illustrative UI concepts unless replaced with genuine website screenshots.

## Privacy

The portfolio release contains your supplied resume with contact details, portrait and intro video. This repository is public; anyone can view and download its files after they are pushed. Never commit API keys, tokens, passwords or private documents.
