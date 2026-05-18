@echo off
echo ========================================
echo Starting Backend Server
echo ========================================
echo.
cd notification_app_be
echo Backend running on http://localhost:5000
echo API endpoint: http://localhost:5000/api/notifications
echo.
call npm run dev
