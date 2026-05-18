# 🚀 Setup Guide - Campus Hiring Evaluation

Complete step-by-step guide to set up and run the notification system.

## 📋 Prerequisites

Before you begin, ensure you have:
- **Node.js** v18.0.0 or higher ([Download](https://nodejs.org/))
- **npm** v9.0.0 or higher (comes with Node.js)
- **Git** (optional, for version control)
- **Code Editor** (VS Code recommended)

### Verify Installation
```bash
node --version
npm --version
```

## 📦 Installation Steps

### Step 1: Navigate to Project Directory
```bash
cd "c:\Users\tanu\OneDrive\Desktop\c++\basic dsa\TAAI&DS17"
```

### Step 2: Install Logging Middleware
```bash
cd logging_middleware
npm install
cd ..
```

**Expected output:**
```
✓ Dependencies installed successfully
```

### Step 3: Install Backend Dependencies
```bash
cd notification_app_be
npm install
cd ..
```

**Packages installed:**
- express
- cors
- dotenv
- typescript
- @types/express
- @types/cors
- @types/node
- ts-node

### Step 4: Install Frontend Dependencies
```bash
cd notification_app_fe
npm install
cd ..
```

**Packages installed:**
- react
- react-dom
- next
- @mui/material
- @mui/icons-material
- @emotion/react
- @emotion/styled
- axios
- zustand
- typescript

## 🏃 Running the Application

### Option 1: Run Both Services (Recommended)

**Terminal 1 - Backend:**
```bash
cd notification_app_be
npm run dev
```

**Expected output:**
```
✓ Server running on http://localhost:5000
✓ API available at http://localhost:5000/api/notifications
```

**Terminal 2 - Frontend:**
```bash
cd notification_app_fe
npm run dev
```

**Expected output:**
```
✓ Ready on http://localhost:3000
```

### Option 2: Production Build

**Backend:**
```bash
cd notification_app_be
npm run build
npm start
```

**Frontend:**
```bash
cd notification_app_fe
npm run build
npm start
```

## 🌐 Accessing the Application

1. **Frontend Dashboard**: http://localhost:3000
2. **Backend API**: http://localhost:5000/api/notifications
3. **Health Check**: http://localhost:5000/health

## ✅ Verification Steps

### 1. Test Backend API

**Health Check:**
```bash
curl http://localhost:5000/health
```

**Expected response:**
```json
{
  "success": true,
  "message": "Server is running",
  "timestamp": "2024-01-15T10:30:00.000Z"
}
```

**Get Notifications:**
```bash
curl http://localhost:5000/api/notifications
```

**Expected response:**
```json
{
  "success": true,
  "data": {
    "notifications": [...],
    "pagination": {...}
  }
}
```

### 2. Test Frontend

Open browser and navigate to: http://localhost:3000

**Verify:**
- ✅ Page loads without errors
- ✅ Notifications are displayed
- ✅ Priority section shows top notifications
- ✅ Filters work correctly
- ✅ Search functionality works
- ✅ Pagination controls appear
- ✅ Dark/Light mode toggle works
- ✅ Mark as read functionality works

## 🔧 Configuration

### Backend Configuration

Create `.env` file in `notification_app_be/`:
```env
PORT=5000
NODE_ENV=development
```

### Frontend Configuration

Create `.env.local` file in `notification_app_fe/`:
```env
NEXT_PUBLIC_API_URL=http://localhost:5000/api
```

## 🐛 Troubleshooting

### Issue: Port Already in Use

**Backend (Port 5000):**
```bash
# Windows
netstat -ano | findstr :5000
taskkill /PID <PID> /F

# Alternative: Change port in backend
# Edit notification_app_be/src/index.ts
# Change PORT to 5001
```

**Frontend (Port 3000):**
```bash
# Windows
netstat -ano | findstr :3000
taskkill /PID <PID> /F

# Alternative: Run on different port
npm run dev -- -p 3001
```

### Issue: Module Not Found

**Solution:**
```bash
# Delete node_modules and reinstall
rm -rf node_modules package-lock.json
npm install
```

### Issue: TypeScript Errors

**Solution:**
```bash
# Rebuild TypeScript
npm run build
```

### Issue: CORS Errors

**Solution:**
Ensure backend CORS is configured correctly in `notification_app_be/src/index.ts`:
```typescript
app.use(cors());
```

### Issue: API Connection Failed

**Checklist:**
1. ✅ Backend is running on port 5000
2. ✅ Frontend .env.local has correct API URL
3. ✅ No firewall blocking localhost
4. ✅ Check browser console for errors

## 📱 Testing on Mobile

### Local Network Access

1. Find your local IP address:
```bash
# Windows
ipconfig
# Look for IPv4 Address (e.g., 192.168.1.100)
```

2. Update frontend `.env.local`:
```env
NEXT_PUBLIC_API_URL=http://192.168.1.100:5000/api
```

3. Access from mobile:
```
http://192.168.1.100:3000
```

## 🎯 Feature Testing Checklist

### Priority Notifications
- [ ] Top 3/5/10 selector works
- [ ] Shows highest priority notifications
- [ ] Updates when limit changes

### Filtering
- [ ] Filter by Placement type
- [ ] Filter by Result type
- [ ] Filter by Event type
- [ ] Show all notifications
- [ ] Unread only toggle works

### Search
- [ ] Search by keyword
- [ ] Clear search button works
- [ ] Shows relevant results
- [ ] Handles no results

### Pagination
- [ ] Navigate to next page
- [ ] Navigate to previous page
- [ ] Jump to first page
- [ ] Jump to last page
- [ ] Shows correct page info

### UI/UX
- [ ] Dark mode toggle works
- [ ] Light mode toggle works
- [ ] Responsive on mobile
- [ ] Responsive on tablet
- [ ] Responsive on desktop
- [ ] Loading skeletons appear
- [ ] Error states display correctly
- [ ] Empty states display correctly

### Notifications
- [ ] Mark as read works
- [ ] Read notifications styled differently
- [ ] Unread count updates
- [ ] Timestamp displays correctly
- [ ] Type badges show correct colors

## 📊 Performance Testing

### Backend Performance
```bash
# Install Apache Bench (optional)
# Test API endpoint
ab -n 1000 -c 10 http://localhost:5000/api/notifications
```

**Expected:**
- Requests per second: > 100
- Average response time: < 200ms

### Frontend Performance

1. Open Chrome DevTools
2. Go to Lighthouse tab
3. Run audit
4. Check scores:
   - Performance: > 90
   - Accessibility: > 90
   - Best Practices: > 90
   - SEO: > 90

## 🔐 Security Checklist

- [ ] No sensitive data in code
- [ ] Environment variables used
- [ ] CORS configured properly
- [ ] Input validation on backend
- [ ] Error messages don't expose internals
- [ ] No console.logs in production

## 📚 Additional Resources

### Documentation
- [Backend API Documentation](./notification_app_be/README.md)
- [Frontend Documentation](./notification_app_fe/README.md)
- [System Design](./notification_system_design.md)
- [Logging Middleware](./logging_middleware/README.md)

### Useful Commands

**Backend:**
```bash
npm run dev      # Development mode
npm run build    # Build TypeScript
npm start        # Production mode
```

**Frontend:**
```bash
npm run dev      # Development mode
npm run build    # Production build
npm start        # Production mode
npm run lint     # Run linter
```

## 🎓 Next Steps

After successful setup:

1. **Explore the Code**
   - Review component structure
   - Understand state management
   - Study API integration

2. **Customize**
   - Modify notification types
   - Add new filters
   - Enhance UI components

3. **Extend**
   - Add database integration
   - Implement authentication
   - Add real-time WebSocket

4. **Deploy**
   - Build for production
   - Deploy backend (Heroku, AWS)
   - Deploy frontend (Vercel, Netlify)

## 💡 Tips for Success

1. **Keep terminals open** - Run backend and frontend in separate terminals
2. **Check console logs** - Both browser and server console for errors
3. **Use browser DevTools** - Network tab to inspect API calls
4. **Read error messages** - They usually point to the issue
5. **Test incrementally** - Verify each feature works before moving on

## 📞 Getting Help

If you encounter issues:

1. Check this setup guide
2. Review component-specific READMEs
3. Inspect browser console (F12)
4. Check server terminal logs
5. Verify all dependencies installed
6. Ensure correct Node.js version

## ✨ Success Indicators

You've successfully set up the project when:

✅ Backend server starts without errors
✅ Frontend loads on localhost:3000
✅ Notifications display correctly
✅ All filters and search work
✅ Pagination functions properly
✅ Theme toggle works
✅ No console errors
✅ API calls succeed

---

**Happy Coding! 🚀**
