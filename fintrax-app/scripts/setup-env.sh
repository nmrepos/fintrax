#!/bin/bash

# Script to set up environment files for local development

echo "🔧 Setting up environment files..."

# Check if .env.example exists
if [ ! -f ".env.example" ]; then
    echo "❌ Error: .env.example file not found!"
    exit 1
fi

# Create .env.local from .env.example if it doesn't exist
if [ ! -f ".env.local" ]; then
    echo "📝 Creating .env.local from .env.example..."
    cp .env.example .env.local
    echo "✅ .env.local created successfully!"
    echo ""
    echo "⚠️  Please edit .env.local and fill in your actual environment values:"
    echo "   - NEXT_PUBLIC_APP_URL"
    echo "   - DATABASE_URL"
    echo "   - NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY"
    echo "   - CLERK_SECRET_KEY"
    echo "   - CLERK_PUBLISHABLE_KEY"
    echo ""
else
    echo "ℹ️  .env.local already exists, skipping creation"
fi

# Create .env from .env.example if it doesn't exist (for docker-compose)
if [ ! -f ".env" ]; then
    echo "📝 Creating .env from .env.example..."
    cp .env.example .env
    echo "✅ .env created successfully!"
    echo ""
    echo "⚠️  Please edit .env and fill in your actual environment values for Docker Compose"
    echo ""
else
    echo "ℹ️  .env already exists, skipping creation"
fi

echo "🎉 Environment setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit your environment files with actual values"
echo "2. Run 'npm run dev' for local development"
echo "3. Run 'docker-compose up' for containerized development"
