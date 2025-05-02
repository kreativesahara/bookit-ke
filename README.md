# 📖 Bookit KE - Booking Platform Boilerplate

**Bookit KE** is a modern booking platform template for local service providers in Kenya and beyond. Built with a full-stack developer in mind, it leverages Vite, React, TailwindCSS, ShadCN UI on the frontend, and ExpressJS, Drizzle ORM, and MySQL on the backend.

---

## 🛠️ Tech Stack

### Frontend
- Vite + React
- Tailwind CSS
- ShadCN UI (Radix UI based component library)

### Backend
- Node.js + Express.js
- Drizzle ORM (type-safe queries)
- MySQL (PlanetScale/Supabase/Local)

---

## 📁 Project Structure

```
bookit-ke/
├── client/               # Vite + React app (frontend)
│   ├── components/       # UI Components
│   ├── pages/            # Routes / Views
│   ├── hooks/            # Custom React hooks
│   └── services/         # Axios API utilities
│
└── server/               # Express.js server (backend)
    ├── controllers/      # Business logic
    ├── routes/           # API endpoints
    ├── db/               # Drizzle ORM schema + config
    └── utils/            # Helpers (e.g., JWT, validators)
```

---

## ⚙️ Features
- 🔐 JWT Authentication for service providers
- 📅 Booking creation, management & status updates
- 💬 WhatsApp notifications integration ready (UltraMsg/Twilio)
- 📦 Simple and scalable codebase
- 🎨 Customizable UI with Tailwind + ShadCN

---

## 🚀 Getting Started

### Prerequisites
- Node.js >= 18
- MySQL DB (Local, PlanetScale, or Supabase)

### 1. Clone the Repo
```bash
git clone https://github.com/your-username/bookit-ke.git
cd bookit-ke
```

### 2. Setup the Backend
```bash
cd server
cp .env.example .env   # Fill in your DATABASE_URL
npm install
npm run dev
```

### 3. Setup the Frontend
```bash
cd ../client
npm install
npm run dev
# Open http://localhost:5173 to view the app
```

## 🏠 Frontend Implementation

- Project entry: `index.html` → `src/main.jsx` → `src/Home.jsx`
- UI components live under `src/components/ui`; import them using the `@` alias (e.g., `@/components/ui/button`).
- To add ShadCN UI components, run:
```bash
npx shadcn-ui@latest add <component>
```
- Tailwind CSS configuration: `tailwind.config.js` and styles in `src/index.css`.
- Customize the landing page by editing `src/Home.jsx` (headline, buttons, features grid, etc.).
- Run development server with `npm run dev` and watch for changes automatically.

---

## 🧪 API Overview
| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/auth/register` | POST | Register a new service provider |
| `/api/auth/login`    | POST | Login and receive JWT |
| `/api/bookings`      | POST | Create a new customer booking |
| `/api/bookings/:userId` | GET | Get bookings by provider |
| `/api/bookings/update/:bookingId` | PATCH | Update booking status |

---

## 📌 Upcoming Improvements
- ✅ Admin dashboard
- ✅ Mpesa integration (Daraja API)
- ✅ Booking calendar
- ✅ Image uploads via Cloudinary

---

## 🤝 Contributing
Pull requests are welcome. For major changes, open an issue first to discuss what you'd like to change.

---

## 📃 License
[MIT](LICENSE)

---

> Built with love and late nights by [You], for the hustlers, the fixers, the pros of 🇰🇪.
