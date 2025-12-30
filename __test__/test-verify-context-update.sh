#!/bin/bash
# test-verify-context-update.sh
# 업데이트 후 검증 테스트

set -e

BASE_DIR="gpters-20th-templates/_systems/10-clarify-path"
COMMAND_DIR="gpters-20th-templates/.claude/commands"

echo "✅ Verification Tests"
echo ""

# Test 1: 10-clarify-path.md에 새 문서 목록 있는가?
echo "Test 1: 10-clarify-path.md document list..."
if grep -q "10.5.*automation-architecture-design" "$BASE_DIR/10-clarify-path.md" && \
   grep -q "10.5.1.*design-document-guide" "$BASE_DIR/10-clarify-path.md" && \
   grep -q "10.6.*implementation-rules" "$BASE_DIR/10-clarify-path.md" && \
   grep -q "10.7.*artifact-mapping" "$BASE_DIR/10-clarify-path.md"; then
  echo "✅ PASS: All new documents listed in index"
else
  echo "❌ FAIL: Missing documents in index"
  exit 1
fi

# Test 2: 10.5-automation-architecture-design.md의 링크 확인
echo "Test 2: 10.5-automation-architecture-design.md links..."
if grep -q "10.5.1-design-document-guide" "$BASE_DIR/10.5-automation-architecture-design.md" && \
   grep -q "10.6-implementation-rules" "$BASE_DIR/10.5-automation-architecture-design.md" && \
   grep -q "10.7-artifact-mapping" "$BASE_DIR/10.5-automation-architecture-design.md"; then
  echo "✅ PASS: All next document links present"
else
  echo "❌ FAIL: Missing links in 10.5"
  exit 1
fi

# Test 3: clarify.md에 Step 7, 8, 9 있는가?
echo "Test 3: clarify.md workflow steps..."
if grep -q "Step 7:" "$COMMAND_DIR/clarify.md" && \
   grep -q "Step 8:" "$COMMAND_DIR/clarify.md" && \
   grep -q "Step 9:" "$COMMAND_DIR/clarify.md"; then
  echo "✅ PASS: All workflow steps added"
else
  echo "❌ FAIL: Missing workflow steps in clarify.md"
  exit 1
fi

# Test 4: 링크 형식 확인
echo "Test 4: Link format validation..."
if grep -q "10.5.1-design-document-guide.md" "$COMMAND_DIR/clarify.md" && \
   grep -q "10.6-implementation-rules.md" "$COMMAND_DIR/clarify.md" && \
   grep -q "10.7-artifact-mapping.md" "$COMMAND_DIR/clarify.md"; then
  echo "✅ PASS: All links properly formatted"
else
  echo "❌ FAIL: Links incorrectly formatted"
  exit 1
fi

echo ""
echo "✅ All verification tests passed!"
echo ""
echo "📊 Summary:"
echo "  ✅ 10-clarify-path.md: 8개 문서 나열"
echo "  ✅ 10.5-automation-architecture-design.md: 3개 링크 추가"
echo "  ✅ clarify.md: Step 7-9 추가 (4가지 링크)"
