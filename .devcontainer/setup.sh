#!/usr/bin/env bash
set -e
echo "[Kydras] Installing Forge CLI..."
npm install -g kydras-forge-cli
echo "[Kydras] Starting Compliance Monitor Service..."
cd /workspace/kydras-compliance-service || git clone https://github.com/Kydras8/kydras-compliance-service /workspace/kydras-compliance-service && cd /workspace/kydras-compliance-service
npm install
npx pm2 start server.js --name kydras-compliance
npx pm2 save
echo "[Kydras] ??? Dev box setup complete."
