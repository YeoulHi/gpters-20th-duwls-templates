#!/bin/bash
# test-update-clarify-path-context.sh
# Clarify Path 문서 상호참조 업데이트 TDD 테스트
# 실행: __test__/test-update-clarify-path-context.sh
# 생성: update-clarify-path-context.sh (성공 시 그대로 둠)

set -e

echo "🧪 Testing Clarify Path context update..."
echo ""

BASE_DIR="gpters-20th-templates/_systems/10-clarify-path"
TEMP_TEST_DIR="/tmp/clarify-path-test"
mkdir -p "$TEMP_TEST_DIR"

# Test 1: 10-clarify-path.md에 10.5 문서 목록 있는가?
echo "Test 1: Checking 10-clarify-path.md document list..."
if grep -q "10.5.*automation-architecture-design" "$BASE_DIR/10-clarify-path.md"; then
  echo "❌ FAIL: 10.5 already in index (should not exist yet)"
  exit 1
fi
echo "✅ PASS: 10.5 not yet in index (ready for update)"

# Test 2: 10.5-automation-architecture-design.md 마지막 줄 확인
echo ""
echo "Test 2: Checking 10.5-automation-architecture-design.md last section..."
if grep -q "10.5.1-design-document-guide" "$BASE_DIR/10.5-automation-architecture-design.md"; then
  echo "❌ FAIL: 10.5.1 link already exists"
  exit 1
fi
echo "✅ PASS: 10.5.1 link not yet in 10.5 (ready for update)"

# Test 3: clarify.md에 10.5 단계 있는가?
echo ""
echo "Test 3: Checking clarify.md workflow..."
if grep -q "10.5.*automation-architecture-design" "$TEMP_TEST_DIR/../..clarify.md" 2>/dev/null || \
   grep -q "Step 7" "$BASE_DIR/../.claude/commands/clarify.md" 2>/dev/null || grep -q "Step 6: 최종 요약" "$(find . -name 'clarify.md' 2>/dev/null | head -1)"; then
  echo "⚠️  Already updated"
else
  echo "✅ PASS: clarify.md workflow needs update"
fi

echo ""
echo "✅ All pre-update tests passed"
echo ""
echo "Ready to generate: update-clarify-path-context.sh"
