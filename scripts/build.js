#!/usr/bin/env node
"use strict";

const fs = require("node:fs");
const path = require("node:path");
const { execFileSync } = require("node:child_process");

const root = path.resolve(__dirname, "..");
const archive = path.join(root, "portfolio-source.zip");
const temp = path.join(root, ".portfolio-extract");
const output = path.join(root, "dist");
const sourceRoot = path.join(temp, "pavan-kumar-portfolio");

function fail(message) {
  console.error("[portfolio-build] " + message);
  process.exit(1);
}

if (!fs.existsSync(archive)) {
  fail("Missing portfolio-source.zip. The full source bundle must be committed before deployment.");
}

fs.rmSync(temp, { recursive: true, force: true });
fs.rmSync(output, { recursive: true, force: true });
fs.mkdirSync(output, { recursive: true });

try {
  execFileSync("unzip", ["-q", archive, "-d", temp], { stdio: "inherit" });
} catch (error) {
  fail("Could not extract portfolio-source.zip. Confirm the build image has unzip installed. " + error.message);
}

if (!fs.existsSync(path.join(sourceRoot, "index.html"))) {
  fail("The source archive did not contain pavan-kumar-portfolio/index.html.");
}

fs.cpSync(sourceRoot, output, { recursive: true, preserveTimestamps: true });

const required = [
  "index.html",
  "styles.css",
  "script.js",
  "three-world.js",
  "assets/pavan-developer-reveal.mp4",
  "assets/pavan-kumar-resume.pdf",
  "assets/pavan-presenter.webp"
];

for (const relative of required) {
  if (!fs.existsSync(path.join(output, relative))) {
    fail("Required deployment asset is missing: " + relative);
  }
}

console.log("[portfolio-build] Static portfolio copied to dist/");
console.log("[portfolio-build] Required HTML, JS, CSS, presenter, video and resume assets verified.");
