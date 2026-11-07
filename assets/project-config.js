/*
 * Verified project destinations and screenshot sources.
 * NeuroDetect uses Thum.io to generate a live-site overview in the visitor's browser.
 * If the service is unavailable, the card falls back to its labelled local preview.
 */
window.PAVAN_PROJECT_CONFIG = Object.freeze({
  neurodetect: {
    liveUrl: "https://neurodetect.lovable.app/",
    screenshot: "https://image.thum.io/get/width/1200/crop/760/noanimate/https://neurodetect.lovable.app/",
    screenshotKind: "live-site-capture",
    screenshotLabel: "Live website screenshot · NeuroDetect",
    screenshotProvider: "Thum.io"
  },
  agrisolve: { liveUrl: "", screenshot: "assets/project-screenshots/agrisolve-overview.webp", screenshotLabel: "Illustrative preview until a verified site is supplied" },
  synthemedbot: { liveUrl: "", screenshot: "assets/project-screenshots/synthemedbot-overview.webp", screenshotLabel: "Illustrative preview" },
  orvionar: { liveUrl: "https://orvionar-launchpad.vercel.app/", screenshot: "assets/project-screenshots/orvionar-overview.webp", screenshotLabel: "Website screenshot pending capture" },
  edusmart: { liveUrl: "https://edu-smart-spark-56128.lovable.app/", screenshot: "assets/project-screenshots/edusmart-overview.webp", screenshotLabel: "Website screenshot pending capture" },
  emotion: { liveUrl: "", screenshot: "assets/project-screenshots/emotion-overview.webp", screenshotLabel: "Illustrative preview" }
});
