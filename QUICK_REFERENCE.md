# ⚡ Quick Reference Guide

## 🚀 Installation (One-Time Setup)

```bash
# Option 1: Use install script (Windows)
install.bat

# Option 2: Manual installation
cd logging_middleware && npm install && cd ..
cd notification_app_be && npm install && cd ..
cd notification_app_fe && npm install && cd ..
```

## ▶️ Running the Application

### Method 1: Using Scripts (Easiest)
```bash
# Terminal 1
start-backend.bat

# Terminal 2
start-frontend.bat
```

### Method 2: Manual Commands
```bash
# Terminal 1 - Backend
cd notification_app_be
npm run dev

# Terminal 2 - Frontend
cd notification_app_fe
npm run dev
```

## 🌐 Access URLs

| Service | URL | Description |
|---------|-----|-------------|
| Frontend | http://localhost:3000 | Main dashboard |
| Backend API | http://localhost:5000/api/notifications | REST API |
| Health Check | http://localhost:5000/health | Server status |

## 📡 API Endpoints

```bash
# Get all notifications (paginated)
GET http://localhost:5000/api/notifications?page=1&limit=10&type=Placement

# Get priority notifications
GET http://localhost:5000/api/notifications/priority?limit=5

# Search notifications
GET http://localhost:5000/api/notifications/search?q=placement

# Mark as read
PATCH http://localhost:5000/api/notifications/:id/read

# Health check
GET http://localhost:5000/health
```

## 🧪 Quick Test Commands

```bash
# Test backend health
curl http://localhost:5000/health

# Test get notifications
curl http://localhost:5000/api/notifications

# Test priority notifications
curl http://localhost:5000/api/notifications/priority?limit=5

# Test search
curl "http://localhost:5000/api/notifications/search?q=placement"
```

## 📁 Project Structure

```
TAAI&DS17/
├── logging_middleware/       # Reusable logging middleware
├── notification_app_be/      # Backend REST API
├── notification_app_fe/      # Frontend dashboard
├── notification_system_design.md  # System architecture
├── README.md                 # Main documentation
├── SETUP_GUIDE.md           # Detailed setup
├── PROJECT_OVERVIEW.md      # Project summary
├── QUICK_REFERENCE.md       # This file
├── install.bat              # Install script
├── start-backend.bat        # Backend start script
└── start-frontend.bat       # Frontend start script
```

## 🎯 Key Features

### Backend
- ✅ REST API with 4 endpoints
- ✅ Pagination & filtering
- ✅ Priority calculation
- ✅ Search functionality
- ✅ Error handling
- ✅ Request logging

### Frontend
- ✅ Responsive design
- ✅ Priority notifications
- ✅ Filtering by type
- ✅ Search bar
- ✅ Pagination
- ✅ Dark/Light mode
- ✅ Loading states
- ✅ Error handling

## 🔧 Common Commands

### Backend Commands
```bash
cd notification_app_be
npm run dev      # Development mode
npm run build    # Build TypeScript
npm start        # Production mode
```

### Frontend Commands
```bash
cd notification_app_fe
npm run dev      # Development mode
npm run build    # Production build
npm start        # Production mode
npm run lint     # Run linter
```

## 🐛 Troubleshooting

### Port Already in Use
```bash
# Kill process on port 5000 (Backend)
netstat -ano | findstr :5000
taskkill /PID <PID> /F

# Kill process on port 3000 (Frontend)
netstat -ano | findstr :3000
taskkill /PID <PID> /F
```

### Module Not Found
```bash
# Reinstall dependencies
cd <project-folder>
rm -rf node_modules package-lock.json
npm install
```

### API Connection Error
1. Ensure backend is running on port 5000
2. Check frontend .env.local file
3. Verify CORS is enabled in backend

## 📊 Testing Checklist

- [ ] Backend starts without errors
- [ ] Frontend loads on localhost:3000
- [ ] Notifications display correctly
- [ ] Priority section shows top N notifications
- [ ] Type filter works (Placement/Result/Event)
- [ ] Search functionality works
- [ ] Pagination controls work
- [ ] Dark/Light mode toggle works
- [ ] Mark as read functionality works
- [ ] Responsive on mobile/tablet/desktop

## 📚 Documentation Files

| File | Purpose |
|------|---------|
| README.md | Main project overview |
| SETUP_GUIDE.md | Detailed setup instructions |
| PROJECT_OVERVIEW.md | Project summary & statistics |
| QUICK_REFERENCE.md | Quick commands & tips |
| notification_system_design.md | System architecture |
| logging_middleware/README.md | Middleware documentation |
| notification_app_be/README.md | Backend API documentation |
| notification_app_fe/README.md | Frontend documentation |

## 💡 Pro Tips

1. **Always run backend first** before starting frontend
2. **Keep both terminals open** to see logs
3. **Use browser DevTools** (F12) to debug frontend
4. **Check server logs** for backend errors
5. **Clear browser cache** if UI doesn't update

## 🎓 Learning Resources

### TypeScript
- Official Docs: https://www.typescriptlang.org/docs/

### Next.js
- Official Docs: https://nextjs.org/docs

### Material UI
- Official Docs: https://mui.com/material-ui/

### Express
- Official Docs: https://expressjs.com/

### Zustand
- Official Docs: https://github.com/pmndrs/zustand

## ✅ Success Indicators

You're all set when:
- ✅ Backend shows "Server running on http://localhost:5000"
- ✅ Frontend shows "Ready on http://localhost:3000"
- ✅ Browser loads dashboard without errors
- ✅ Notifications are visible
- ✅ All filters and search work
- ✅ No console errors

## 🎯 Next Steps

1. **Explore the code** - Review component structure
2. **Test all features** - Use the testing checklist
3. **Read documentation** - Understand the architecture
4. **Customize** - Modify and extend features
5. **Deploy** - Build for production

## 📞 Need Help?

1. Check SETUP_GUIDE.md for detailed instructions
2. Review component-specific READMEs
3. Inspect browser console (F12)
4. Check server terminal logs
5. Verify Node.js version (v18+)

---

**Quick Start**: Run `install.bat` → `start-backend.bat` → `start-frontend.bat` → Open http://localhost:3000

**Happy Coding! 🚀**
