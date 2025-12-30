#!/bin/bash
# update-clarify-path-context.sh
# Clarify Path 문서 상호참조 업데이트
# 목표: 10.5, 10.5.1, 10.6, 10.7 문서를 기존 3개 문서와 연결

set -e

BASE_DIR="gpters-20th-templates/_systems/10-clarify-path"
COMMAND_DIR="gpters-20th-templates/.claude/commands"

echo "📝 Updating Clarify Path document context..."
echo ""

# ========================================
# 1. 10-clarify-path.md 업데이트
# ========================================
echo "1️⃣  Updating 10-clarify-path.md..."

# 기존 문서 목록 부분을 새로운 버전으로 교체
cat > /tmp/10-clarify-path-new.md << 'MAIN_EOF'
---
route: "반복되는 업무 발견 → 자동화 Task 명확화 경로"
format: "3가지 분기 선택 지도"
context: "비전공자 프리랜서가 모호한 아이디어를 구현 가능한 Skill로 변환하는 시스템"
rules: "1단계 불편감지 → 2단계 극단화(선택) → 3단계 Task명확화 → 자동화설계 → 구현규칙 → 산출물매핑"
---

# 10. Clarify Path - 아이디어 명확화 경로

## 🎯 목표
반복 업무 발견 → 불편함 감지 → 극단화(선택) → Task 명확화 → 자동화 설계 → 구현 규칙 적용 → 산출물 매핑

---

## 🛤️ 경로 선택

### 경로 1: 명확한 문제 → Task 명확화 (20분)
불편함이 명확 → [10.1-discomfort-detection](10.1-discomfort-detection.md) → [10.3-task-clarification](10.3-task-clarification.md) → [10.5-automation-architecture-design](10.5-automation-architecture-design.md)

### 경로 2: 애매한 문제 → 극단화 → Task 명확화 (30분)
불편함이 모호 → [10.1-discomfort-detection](10.1-discomfort-detection.md) → [10.2-extreme-thinking](10.2-extreme-thinking.md) → [10.3-task-clarification](10.3-task-clarification.md) → [10.5-automation-architecture-design](10.5-automation-architecture-design.md)

### 경로 3: 경로 결정 (1분)
어떤 경로? → [10.4-agent-selection-guide](10.4-agent-selection-guide.md)

---

## 📄 문서 목록

| ID | 제목 | 설명 |
|:--:|------|------|
| 10.1 | [discomfort-detection](10.1-discomfort-detection.md) | 불편함 감지 체크리스트 |
| 10.2 | [extreme-thinking](10.2-extreme-thinking.md) | 극단화를 통한 문제 본질 발굴 |
| 10.3 | [task-clarification](10.3-task-clarification.md) | 5가지 질문으로 Task 명확화 |
| 10.4 | [agent-selection-guide](10.4-agent-selection-guide.md) | 경로 선택 가이드 |
| 10.5 | [automation-architecture-design](10.5-automation-architecture-design.md) | 자동화 아키텍처 설계 5단계 |
| 10.5.1 | [design-document-guide](10.5.1-design-document-guide.md) | 설계 문서 작성 방법 (모호함 제거) |
| 10.6 | [implementation-rules](10.6-implementation-rules.md) | 구현 규칙 (Python 3.11.7 + Git Bash) |
| 10.7 | [artifact-mapping](10.7-artifact-mapping.md) | 산출물 매핑 (설계→테스트→구현) |

---

## 🚀 전체 워크플로우

```
경로 결정 (10.4, 1분)
    ↓
불편감지 (10.1, 3분)
    ↓
극단화 (10.2, 10분, 선택)
    ↓
Task명확화 (10.3, 15분)
    ↓
자동화설계 (10.5, 30분)
    ↓
설계문서작성 (10.5.1, 참고)
    ↓
구현규칙적용 (10.6, 기본)
    ↓
산출물매핑 (10.7, 검증)
    ↓
TDD 구현 시작
```

---

**시작**: [10.4-agent-selection-guide](10.4-agent-selection-guide.md)
MAIN_EOF

cp /tmp/10-clarify-path-new.md "$BASE_DIR/10-clarify-path.md"
echo "✅ 10-clarify-path.md updated"

# ========================================
# 2. 10.5-automation-architecture-design.md 업데이트
# ========================================
echo "2️⃣  Updating 10.5-automation-architecture-design.md..."

# 마지막 부분 교체
sed -i '174,176d' "$BASE_DIR/10.5-automation-architecture-design.md"

cat >> "$BASE_DIR/10.5-automation-architecture-design.md" << 'DESIGN_EOF'

---

**다음**: 설계 기반 TDD 구현 시작
- 설계 작성 가이드: [10.5.1-design-document-guide](10.5.1-design-document-guide.md)
- 구현 규칙: [10.6-implementation-rules](10.6-implementation-rules.md)
- 산출물 매핑: [10.7-artifact-mapping](10.7-artifact-mapping.md)

테스트 경로: `__test__/{YYYYMMDD}_{title}/`
스크립트 경로: `_scripts/{title}/`
DESIGN_EOF

echo "✅ 10.5-automation-architecture-design.md updated"

# ========================================
# 3. clarify.md (명령어) 업데이트
# ========================================
echo "3️⃣  Updating .claude/commands/clarify.md..."

cat >> "$COMMAND_DIR/clarify.md" << 'COMMAND_EOF'

---

### Step 7: 설계 문서 작성 (30분)
→ [`10.5-automation-architecture-design.md`](../../_systems/10-clarify-path/10.5-automation-architecture-design.md) 5단계 진행

**작성 시 참고**:
→ [`10.5.1-design-document-guide.md`](../../_systems/10-clarify-path/10.5.1-design-document-guide.md) - 모호함/누락 제거

### Step 8: 구현 규칙 확인 (5분)
→ [`10.6-implementation-rules.md`](../../_systems/10-clarify-path/10.6-implementation-rules.md)

**체크항목**:
- Python 3.11.7 준수
- Git Bash 호환성
- TDD 프로세스
- 경로: `__test__/{YYYYMMDD}_{title}/` + `_scripts/{title}/`

### Step 9: 산출물 매핑 확인 (최종)
→ [`10.7-artifact-mapping.md`](../../_systems/10-clarify-path/10.7-artifact-mapping.md)

**매핑 확인**:
- 설계 섹션별 테스트 파일 존재
- 모든 테스트 통과
- 구현 파일과 일치

---

## 📚 확장된 관련 문서

- **_systems/10-clarify-path**: 전체 경로 인덱스
- **_systems/10-clarify-path/10.1-discomfort-detection.md**: 불편감지
- **_systems/10-clarify-path/10.2-extreme-thinking.md**: 극단화
- **_systems/10-clarify-path/10.3-task-clarification.md**: Task명확화
- **_systems/10-clarify-path/10.4-agent-selection-guide.md**: 경로선택
- **_systems/10-clarify-path/10.5-automation-architecture-design.md**: 자동화설계
- **_systems/10-clarify-path/10.5.1-design-document-guide.md**: 설계작성법
- **_systems/10-clarify-path/10.6-implementation-rules.md**: 구현규칙
- **_systems/10-clarify-path/10.7-artifact-mapping.md**: 산출물매핑
COMMAND_EOF

echo "✅ .claude/commands/clarify.md updated"

echo ""
echo "✅ All document context updates completed"
echo ""
echo "📍 Updated files:"
echo "  - $BASE_DIR/10-clarify-path.md"
echo "  - $BASE_DIR/10.5-automation-architecture-design.md"
echo "  - $COMMAND_DIR/clarify.md"
