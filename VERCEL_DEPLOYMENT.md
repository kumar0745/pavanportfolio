# Vercel deployment settings

The existing Vercel project `pavanportfolio` is linked to GitHub repository `kumar0745/pavanportfolio`.

Recommended project settings:

- Framework preset: Other / no framework
- Root directory: repository root
- Install command: `npm install --ignore-scripts --no-audit --no-fund`
- Build command: `npm run build`
- Output directory: `dist`
- Production branch: `main`

The `vercel.json` in this repository defines these settings. The build script `scripts/build.js` copies `index.html`, the CSS/JavaScript files, Three.js scene and the complete `assets/` folder into `dist/`. It checks the video, resume, presenter image and NeuroDetect preview before finishing.

No environment variables are needed for this static portfolio. Three.js loads from jsDelivr and the NeuroDetect screenshot uses an external screenshot service.

After the full source code and assets have been pushed to `main`, Vercel should automatically build and deploy the website. The production deployment is configured to be public; SSO protection is restricted to preview deployments.
