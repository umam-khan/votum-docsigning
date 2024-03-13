## Self Hosting

We support a variety of deployment methods, and are actively working on adding more. Stay tuned for updates!

> Please note that the below deployment methods are for v0.9, we will update these to v1.0 once it has been released.

### Fetch, configure, and build

First, clone the code from Github:

```
git clone https://github.com/documenso/documenso.git
```

Then, inside the `documenso` folder, copy the example env file:

```
cp .env.example .env
```

The following environment variables must be set:

- `NEXTAUTH_URL`
- `NEXTAUTH_SECRET`
- `NEXT_PUBLIC_WEBAPP_URL`
- `NEXT_PUBLIC_MARKETING_URL`
- `NEXT_PRIVATE_DATABASE_URL`
- `NEXT_PRIVATE_DIRECT_DATABASE_URL`
- `NEXT_PRIVATE_SMTP_FROM_NAME`
- `NEXT_PRIVATE_SMTP_FROM_ADDRESS`

> If you are using a reverse proxy in front of Documenso, don't forget to provide the public URL for both `NEXTAUTH_URL` and `NEXT_PUBLIC_WEBAPP_URL` variables!

Now you can install the dependencies and build it:

```
npm i
npm run build:web
npm run prisma:migrate-deploy
```

Finally, you can start it with:

```
npm run start
```

This will start the server on `localhost:3000`. For now, any reverse proxy can then do the frontend and SSL termination.

> If you want to run with another port than 3000, you can start the application with `next -p <ANY PORT>` from the `apps/web` folder.

