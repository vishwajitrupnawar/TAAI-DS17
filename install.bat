@echo off
echo ========================================
echo Campus Hiring Evaluation - Quick Setup
echo ========================================
echo.

echo [1/3] Installing Logging Middleware...
cd logging_middleware
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install logging_middleware
    pause
    exit /b 1
)
cd ..
echo ✓ Logging Middleware installed
echo.

echo [2/3] Installing Backend Dependencies...
cd notification_app_be
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install backend dependencies
    pause
    exit /b 1
)
cd ..
echo ✓ Backend dependencies installed
echo.

echo [3/3] Installing Frontend Dependencies...
cd notification_app_fe
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install frontend dependencies
    pause
    exit /b 1
)
cd ..
echo ✓ Frontend dependencies installed
echo.

echo ========================================
echo ✓ Installation Complete!
echo ========================================
echo.
echo Next Steps:
echo 1. Open TWO terminal windows
echo 2. Terminal 1: cd notification_app_be ^&^& npm run dev
echo 3. Terminal 2: cd notification_app_fe ^&^& npm run dev
echo 4. Open browser: http://localhost:3000
echo.
echo For detailed instructions, see SETUP_GUIDE.md
echo.
pause
