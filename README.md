# Pavan Kumar — Developer Portfolio

Personal portfolio repository for Pavan Kumar, a Computer Science graduate focused on AI/ML, Generative AI, full-stack development and data-oriented software engineering.

> **Repository readiness:** The current default-branch snapshot contains deployment documentation and build scaffolding, but it does not yet contain the website entry point and required media listed below. The production build is therefore **not verified and is expected to fail until the complete portfolio release is committed**. This status is intentionally explicit so visitors and recruiters are not misled.

## Portfolio concept

The intended experience is a pastel, story-led city-to-home portfolio. Visitors explore dedicated spaces for the profile, education, skills, internships, projects, credentials and contact details.

Planned experience highlights:
- Responsive, accessible portfolio navigation
- Three.js city-to-home environment with reduced-motion support
- Dedicated project and experience sections
- Project links and genuine screenshots where available
- Resume and contact information, published only after a privacy review

## Current repository contents

The repository currently includes:
- Vercel configuration and deployment notes
- A Node.js static-site build script
- Project link/screenshot configuration and a small set of assets
- Upload and release guidance

The following files are required by `scripts/build.js` but are not present in the inspected default-branch root snapshot:
- `index.html`
- `styles.css`
- `script.js`
- `three-world.js`
- `assets/pavan-developer-reveal.mp4`
- `assets/pavan-kumar-resume.pdf`
- `assets/pavan-presenter.png`

Do not mark this repository as deployment-ready until those files are committed and the production build succeeds.

## Local setup and build

Requirements: Node.js 22.x.

```bash
npm install
npm run build
```

Expected output: `dist/`.

At the current repository snapshot, the build script checks for the missing website files above and exits with a clear error. This is expected until the complete release is uploaded.

## Deployment

The repository contains a Vercel configuration and deployment notes in [VERCEL_DEPLOYMENT.md](VERCEL_DEPLOYMENT.md). Configure the project to use the repository root and `dist` as the output directory only after the source files are present and `npm run build` passes.

## Project links

- NeuroDetect demo: https://neurodetect.lovable.app/
- GitHub profile: https://github.com/kumar0745
- LinkedIn: https://www.linkedin.com/in/pavan-kumar-1803a128b/

Other project URLs and their verified status should be maintained in [PROJECT_SCREENSHOTS_AND_URLS.md](PROJECT_SCREENSHOTS_AND_URLS.md).

## Release checklist

- [ ] Commit the complete portfolio source and required assets.
- [ ] Review the resume, portrait and video before making them public.
- [ ] Replace illustrative previews with genuine project screenshots where possible.
- [ ] Run `npm run build` successfully.
- [ ] Test desktop, mobile, keyboard navigation and reduced-motion behavior.
- [ ] Verify all project, LinkedIn, GitHub and contact links.
- [ ] Deploy to Vercel and verify the production URL.

## Privacy and security

This is a public repository. Anyone can view and download committed files. Never commit API keys, access tokens, passwords, private certificates or personal documents that are not intended for public release. Review personal contact details and media before publishing.
