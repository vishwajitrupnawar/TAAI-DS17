# Notification Dashboard Frontend

Modern, responsive notification dashboard built with Next.js, React, TypeScript, and Material UI.

## Features

- ✅ Responsive design (mobile + desktop)
- ✅ Priority notifications section
- ✅ Notification filtering by type
- ✅ Search functionality
- ✅ Pagination
- ✅ Dark/Light mode toggle
- ✅ Loading skeletons
- ✅ Error handling UI
- ✅ Empty state UI
- ✅ Mark as read functionality
- ✅ Real-time updates
- ✅ TypeScript for type safety
- ✅ Zustand for state management

## Tech Stack

- **Framework**: Next.js 14
- **UI Library**: Material UI (MUI)
- **Language**: TypeScript
- **State Management**: Zustand
- **HTTP Client**: Axios
- **Styling**: Emotion (CSS-in-JS)

## Project Structure

```
notification_app_fe/
├── src/
│   ├── components/          # Reusable components
│   │   ├── Navbar.tsx
│   │   ├── FilterBar.tsx
│   │   ├── NotificationCard.tsx
│   │   ├── PaginationControls.tsx
│   │   ├── LoadingSkeleton.tsx
│   │   ├── EmptyState.tsx
│   │   └── ErrorState.tsx
│   ├── pages/               # Next.js pages
│   │   ├── _app.tsx         # App wrapper with theme
│   │   └── index.tsx        # Main dashboard
│   ├── context/             # State management
│   │   └── notificationStore.ts
│   ├── services/            # API services
│   │   └── api.service.ts
│   ├── types/               # TypeScript types
│   │   └── notification.types.ts
│   └── styles/              # Global styles
├── public/                  # Static assets
├── package.json
├── tsconfig.json
├── next.config.js
└── README.md
```

## Installation

```bash
cd notification_app_fe
npm install
```

## Environment Variables

Create a `.env.local` file:

```env
NEXT_PUBLIC_API_URL=http://localhost:5000/api
```

## Running the Application

### Development Mode
```bash
npm run dev
```

The app will start on `http://localhost:3000`

### Production Build
```bash
npm run build
npm start
```

## Features Overview

### 1. Priority Notifications
- Displays top N priority notifications
- Configurable limit (3, 5, or 10)
- Sorted by priority score
- Highlighted section at the top

### 2. Notification Filtering
- Filter by type (Placement, Result, Event, All)
- Show unread only toggle
- Real-time filtering

### 3. Search
- Search notifications by message content
- Instant search results
- Clear search button

### 4. Pagination
- Navigate through pages
- Shows current page info
- First/Last page buttons
- Smooth scroll to top

### 5. Dark/Light Mode
- Toggle between themes
- Persistent across sessions
- Material UI theme integration

### 6. Responsive Design
- Mobile-first approach
- Tablet and desktop optimized
- Flexible layouts
- Touch-friendly UI

### 7. Loading States
- Skeleton loaders
- Smooth transitions
- Loading indicators

### 8. Error Handling
- User-friendly error messages
- Retry functionality
- Network error detection

### 9. Empty States
- Clear messaging
- Action buttons
- Helpful illustrations

## Component Documentation

### Navbar
Top navigation bar with:
- App title
- Unread notification badge
- Theme toggle button

### FilterBar
Filtering controls with:
- Search input
- Type dropdown
- Unread only switch

### NotificationCard
Individual notification display:
- Type badge with color coding
- Timestamp (relative)
- Message content
- Read/Unread indicator
- Mark as read button
- Hover effects

### PaginationControls
Pagination UI:
- Page numbers
- First/Last buttons
- Current page info
- Items count

### LoadingSkeleton
Loading placeholder:
- Animated skeletons
- Matches card layout
- Multiple items

### EmptyState
No data display:
- Icon
- Message
- Clear filters button

### ErrorState
Error display:
- Error message
- Retry button
- Alert styling

## State Management

Using Zustand for global state:

```typescript
// Access store
const { notifications, loading, error } = useNotificationStore();

// Actions
fetchNotifications();
setFilter('type', 'Placement');
markAsRead(notificationId);
```

## API Integration

All API calls are handled through `api.service.ts`:

```typescript
// Fetch notifications
await apiService.getNotifications(page, limit, type);

// Get priority notifications
await apiService.getPriorityNotifications(limit);

// Mark as read
await apiService.markAsRead(id);

// Search
await apiService.searchNotifications(query);
```

## Styling

Material UI theming:

```typescript
const theme = createTheme({
  palette: {
    mode: isDarkMode ? 'dark' : 'light',
    primary: { main: '#1976d2' },
    secondary: { main: '#dc004e' },
  },
});
```

## Type Safety

Full TypeScript coverage:
- Interface definitions
- Type checking
- IntelliSense support
- Compile-time error detection

## Performance Optimizations

- Code splitting with Next.js
- Lazy loading components
- Memoization where needed
- Optimized re-renders
- Efficient state updates

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers

## Accessibility

- Semantic HTML
- ARIA labels
- Keyboard navigation
- Screen reader support
- Color contrast compliance

## Future Enhancements

- [ ] Push notifications
- [ ] Notification grouping
- [ ] Custom notification sounds
- [ ] Export notifications
- [ ] Notification preferences
- [ ] Offline support (PWA)
- [ ] Notification history
- [ ] Advanced filters

## Troubleshooting

### Port already in use
```bash
# Kill process on port 3000
npx kill-port 3000
```

### API connection issues
- Ensure backend is running on port 5000
- Check CORS configuration
- Verify API URL in .env.local

### Build errors
```bash
# Clear cache and reinstall
rm -rf .next node_modules
npm install
npm run dev
```

## License

MIT
