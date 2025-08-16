# Fintrax

A modern, full-stack personal finance tracker built with Next.js, Drizzle ORM, Clerk authentication, and more.

## Features

- Track accounts, categories, and transactions
- Interactive charts and dashboards
- Secure authentication with Clerk
- Responsive UI, ready for desktop and mobile
- Built for cloud-native deployment (Docker, AWS, etc.)

## Local Development

1. **Clone the repo:**
	```bash
	git clone https://github.com/nmrepos/fintrax.git
	cd fintrax/fintrax-app
	```

2. **Copy and edit your environment variables:**
	```bash
	cp .env.example .env
	# Edit .env and fill in your Clerk and database credentials
	```

3. **Install dependencies:**
	```bash
	npm install
	```

4. **Run the app:**
	```bash
	npm run dev
	```
	The app will be available at [http://localhost:3000](http://localhost:3000).

## Running with Docker

1. **Build and start with Docker Compose:**
	```bash
	# Make sure .env exists in fintrax-app/
	docker compose up -d --build
	```

2. **Access the app:**
	- [http://localhost:3000](http://localhost:3000)

> **Note:**  
> The Dockerfile and docker-compose.yml are set up to use environment variables from your `.env` file.  
> **Never commit real secrets to the repo!**  
> For production, set secrets in your deployment environment.

## Environment Variables

- `NEXT_PUBLIC_APP_URL` – Your app’s public URL (e.g., http://localhost:3000)
- `DATABASE_URL` – Your database connection string (Postgres/Neon recommended)
- `NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY` – Clerk frontend key
- `CLERK_SECRET_KEY` – Clerk backend secret
- `CLERK_PUBLISHABLE_KEY` – Clerk backend publishable key
- `NEXT_PUBLIC_CLERK_SIGN_IN_URL` – (default: `/sign-in`)
- `NEXT_PUBLIC_CLERK_SIGN_UP_URL` – (default: `/sign-up`)

See `.env.example` for a full list.

## Testing

```bash
npm run lint
npm run build
npm test
```

## Deployment

- The app is ready for containerized deployment (ECS, ECR, etc.).
- See `infrastructure/` for AWS CloudFormation templates and deployment scripts.
- CI/CD is set up via GitHub Actions (`.github/workflows/ci-cd.yml`).

