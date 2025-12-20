#!/bin/bash
set -e

trap 'echo "❌ Deployment failed at line $LINENO"; exit 1' ERR

APP_NAME="Book-finder-App"
REPO_URL="https://github.com/Ratnmala1007/Book-finder-App.git"

echo "************ DEPLOYMENT STARTED ************"

code_clone() {
    echo "📥 Cloning or updating app..."

    if [ -d "$APP_NAME" ]; then
        echo "Repo exists, pulling latest code"
        cd "$APP_NAME"
        git pull
    else
        git clone "$REPO_URL"
        cd "$APP_NAME"
    fi
}

install_requirement() {
    echo "📦 Installing dependencies..."
    npm install
}

required_run() {
    echo "🚀 Starting application..."
    nohup npm start > app.log 2>&1 &
}

code_clone
install_requirement
required_run

echo "************ DEPLOYMENT COMPLETED ************"

