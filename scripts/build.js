#!/usr/bin/env node
"use strict";
const fs = require("node:fs");
const path = require("node:path");
const root = path.resolve(__dirname, "..");
const output = path.join(root, "dist");
function fail(message) {
  console.error("[portfolio-build] " + message);
  process.exit(1);
}
const include = ["index.html", "styles.css", "script.js", "three-world.js", "assets"];
const required = [
  "index.html", "styles.css", "script.js", "three-world.js",
  "assets/pavan-developer-reveal.mp4", "assets/pavan-kumar-resume.pdf",
  "assets/pavan-presenter.png", "assets/project-config.js"
];
for (const relative of required) {
  if (!fs.existsSync(path.join(root, relative))) fail("Required website file is missing: " + relative);
}
fs.rmSync(output, {recursive:true, force:true});
fs.mkdirSync(output, {recursive:true});
for (const relative of include) {
  fs.cpSync(path.join(root, relative), path.join(output, relative), {recursive:true, preserveTimestamps:true});
}
console.log("[portfolio-build] Static portfolio copied to dist/.");
console.log("[portfolio-build] HTML, CSS, JavaScript, Three.js scene, reveal video, resume, presenter and project previews verified.");
