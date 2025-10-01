#!/bin/bash

# Test script for MuleSoft Starter API
# Make sure the application is running on port 8081 before executing this script

echo "🚀 Testing MuleSoft Starter API..."
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Base URL
BASE_URL="http://localhost:8081"

# Test 1: Health Check
echo -e "${BLUE}1. Testing Health Check Endpoint${NC}"
curl -s "$BASE_URL/health" | jq .
echo -e "\n"

# Test 2: Get All Employees
echo -e "${BLUE}2. Getting All Employees${NC}"
curl -s "$BASE_URL/api/employees" | jq .
echo -e "\n"

# Test 3: Get Employee by ID
echo -e "${BLUE}3. Getting Employee with ID 1${NC}"
curl -s "$BASE_URL/api/employees/1" | jq .
echo -e "\n"

# Test 4: Get Non-existent Employee
echo -e "${BLUE}4. Getting Non-existent Employee (ID 999)${NC}"
curl -s "$BASE_URL/api/employees/999" | jq .
echo -e "\n"

# Test 5: Create New Employee
echo -e "${BLUE}5. Creating New Employee${NC}"
NEW_EMPLOYEE=$(curl -s -X POST "$BASE_URL/api/employees" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Test User",
    "email": "test@example.com",
    "department": "QA"
  }')
echo $NEW_EMPLOYEE | jq .
echo -e "\n"

# Test 6: Create Employee with Duplicate Email (should fail)
echo -e "${BLUE}6. Creating Employee with Duplicate Email (should fail)${NC}"
curl -s -X POST "$BASE_URL/api/employees" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Another John",
    "email": "john@example.com",
    "department": "IT"
  }' | jq .
echo -e "\n"

# Test 7: Get All Employees Again (should show the new employee)
echo -e "${BLUE}7. Getting All Employees Again (should include new employee)${NC}"
curl -s "$BASE_URL/api/employees" | jq .
echo -e "\n"

echo -e "${GREEN}✅ API Testing Complete!${NC}"