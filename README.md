# gpters 20기 - 프리랜서를 위한 Claude Code 템플릿

> **4주 만에 나만의 자동화 Skill 3개 이상 만들기**

AI 커뮤니티 "지피터스" 20기 프리랜서 스터디를 위한 
Claude Code 학습 템플릿입니다.

---

## 👋 환영합니다!

이 프로젝트는 **비개발자 프리랜서**도 
쉽게 따라할 수 있도록 설계된 Claude Code 학습 자료입니다.

4주 동안:
- ✅ 음성 녹음을 자동으로 정리하고
- ✅ Google Calendar와 자연스럽게 대화하고
- ✅ 웹에서 정보를 자동으로 수집하는

**나만의 자동화 도구**를 만들게 됩니다!

---

## 🎯 이게 뭔가요?

### 프로젝트 목표

**핵심 결과물**: 나만의 Claude Code 커스텀 **Skill 3개 이상** 완성

**예시 Skill들:**
- 🎤 **음성 전사 자동화**: 미팅 녹음 → 요약 + To-do 추출
- 📅 **일정 관리 자동화**: "다음 주 월요일 10시 회의 잡아줘" → 자동 등록
- 📰 **뉴스 크롤링**: 관심 키워드 입력 → 핵심 정보만 요약
- ✍️ **콘텐츠 파이프라인**: 자료 수집 → 초안 작성 → 플랫폼별 변환

**기대 효과**: 

- 주 **4시간 이상** 반복 업무 시간 절약!
- 비개발자도 클로드 코드를 다룰 수 있게 됩니다.

---

## 🚀 빠른 시작 (3단계)

### 1️⃣ 프로젝트 클론

```bash
git clone https://github.com/your-repo/gpters-20th-templates.git
cd gpters-20th-templates
```

### 2️⃣ 초기 설정 실행

Claude Code에서:

```bash
/setup-workspace
```

이 명령어는 자동으로:
- ✅ 환경 검증 (Claude Code, VSCode, Python)
- ✅ 필요한 폴더 생성
- ✅ Skills vs Commands 개념 설명
- ✅ 다음 단계 안내

를 해줍니다.

### 3️⃣ Python 설치 (Week 2 전까지)

```bash
# 설치 가이드 열기
cat docs/python-setup-guide.md
```

→ **초보자도 따라할 수 있는 완전 가이드**입니다!

---

## 📅 4주 커리큘럼

### Week 1: 나만의 데이터 만들고 문제 발견하기

**주제**: 자동화 아이디어와 문제 해결 사례 공유

**과제**:
- [ ] 나만의 데이터 만들기
- [ ] 자동화 아이디어 1개 선정

**결과**: 공식 Skill 참고 + 맞춤형 자동화 설계안 1개

**소요 시간**: 4시간

---

### Week 2: Claude Code 커스텀 Skill 실습하기

**주제**: 음성 전사 자동화 프로세스 시연 및 Skill 실습

**과제**:
- [ ] 음성 전사 Skill 개발
- [ ] 실제 업무에 적용

**결과**: 실제로 사용하는 나만의 커스텀 Skill 1개

**소요 시간**: 4시간

**필요한 것**:
- Python 3.11 설치 완료 ([설치 가이드](docs/python-setup-guide.md))
- 가상환경 설정 완료
- openai-whisper 패키지 설치

---

### Week 3: 연동을 통해 자동화 가능성 확장하기

**주제**: Google Calendar API 연동 과정 시연

**과제**:
- [ ] 일정 관리 Skill 구현
- [ ] 추가 Skill 1개 더 구현

**결과**: 실제로 사용하는 나만의 커스텀 Skill 3개 이상

**소요 시간**: 4시간

**필요한 것**:
- `.env.local` 파일 설정 (스터디장이 설명)
- Google Calendar API 키

---

### Week 4: 실제로 돌아가는 나만의 워크플로우 공유하기

**주제**: 최종 Skill 발표 및 상호 피드백

**과제**:
- [ ] 최종 발표 준비
- [ ] 다른 업무로 확장하는 방법 논의

**결과**: 완성된 자동화 시스템 + 확장 계획

**소요 시간**: 4시간

---

## 📂 폴더 구조

```
gpters-20th-templates/
│
├── 📄 README.md                    # 👈 지금 읽고 있는 파일!
├── 📄 .gitignore                   # Git 제외 파일 (venv, .env.local 등)
│
├── 📂 .claude/                      # Claude Code 설정
│   ├── commands/                   # Slash Commands
│   │   └── setup-workspace.md     # 초기 설정 명령어
│   └── skills/                     # Project Skills (팀 공유)
│       └── (Week 2-3에 추가될 예정)
│
├── 📂 docs/                         # 📚 문서 모음
│   ├── gpters20.md                # 스터디 상세 페이지
│   ├── skills.md                  # Agent Skills 공식 문서
│   ├── python-setup-guide.md      # Python 설치 완전 가이드
│   └── weekly-guides/             # 주차별 가이드 (추후 추가)
│
├── 📂 skills/                       # 🎓 Skill 예제 모음 (참고용)
│   ├── voice-transcription/       # 음성 전사 예제
│   ├── google-calendar/           # Google Calendar 연동
│   ├── web-crawler-summary/       # 크롤링 요약
│   └── content-pipeline/          # 콘텐츠 파이프라인
│
├── 📂 templates/                    # 📝 재사용 템플릿
│   └── automation-design.md       # 자동화 설계서 템플릿
│
├── 📂 examples/                     # 💡 실제 사용 예시
│   └── my-first-idea.md           # 아이디어 작성 예시
│
├── 📂 scripts/                      # 🔧 자동화 스크립트
│   └── setup.py                   # 환경 설정 스크립트
│
└── 📂 venv/                         # Python 가상환경 (로컬 생성)
```

### 🗂️ 각 폴더 설명

#### `.claude/`
Claude Code 전용 폴더입니다.
- **commands/**: `/setup-workspace` 같은 Slash Commands
- **skills/**: 이 프로젝트 전용 Agent Skills (팀과 공유)

#### `docs/`
모든 문서가 여기 있습니다.
- 막히면 여기서 찾아보세요!

#### `skills/`
실제 Skill 예제들입니다.
- Week 2-3에 참고하세요

#### `templates/`
복사해서 사용할 템플릿들입니다.

---

## 🛠️ 주요 명령어 (Slash Commands)

Claude Code에서 `/` 입력 후 사용하세요:

### 초기 설정
- `/setup-workspace` - 프로젝트 초기 설정 (지금 바로!)

### Week 3 이후
- `/setup-google-calendar` - Google Calendar API 설정 (자동)

### 일상 업무
- `/todo` - 할 일 추가
- `/todos` - 할 일 목록 확인

---

## 📖 중요 문서

처음 시작하는 분들을 위한 필수 문서:

1. **[스터디 상세 페이지](docs/gpters20.md)** - 4주 커리큘럼 전체 보기
2. **[Python 설치 가이드](docs/python-setup-guide.md)** - Week 2 전까지 완료하세요!
3. **[Skills 공식 문서](docs/skills.md)** - Agent Skills란 무엇인가?
4. **[setup-workspace.md](.claude/commands/setup-workspace.md)** - 초기 설정 상세 가이드

---

## 💡 Skills vs Commands 차이점

**헷갈리기 쉬운 개념을 정리해드립니다!**

| | **Agent Skills** | **Slash Commands** |
|---|---|---|
| **실행 방식** | 🤖 Claude가 자동으로 판단 | 👤 사용자가 직접 `/명령어` 입력 |
| **위치** | `.claude/skills/` | `.claude/commands/` |
| **주요 파일** | `SKILL.md` | `명령어.md` |
| **사용 예** | "이 녹음 정리해줘" → 음성 전사 Skill 자동 실행 | `/setup-workspace` 직접 입력 |
| **스터디 초점** | ✅ Week 2-3에 만들 것! | 보조 도구 |

**이번 스터디의 핵심은 Agent Skills 만들기입니다!**

---

## ❓ 자주 묻는 질문 (FAQ)

### Q1. Python을 전혀 모르는데 괜찮나요?

**괜찮습니다!** [Python 설치 가이드](docs/python-setup-guide.md)를 따라하고, Claude에게 잘 물어보면 됩니다.

이 스터디는 비개발자를 위해 설계되었습니다.

---

### Q2. Week 1에는 뭘 하나요?

자동화 아이디어를 발견하고 설계하는 주입니다.

1. `/setup-workspace` 실행
2. `templates/automation-design.md` 템플릿 사용
3. 나의 반복 업무 3가지 적기
4. 자동화하고 싶은 것 1개 선정

**코드는 안 짜도 됩니다!**

---

### Q3. Mac/Windows 둘 다 지원하나요?

**네!** 모든 가이드가 Mac/Windows 환경을 모두 지원합니다.

---

### Q4. 가상환경이 뭔가요? 꼭 필요한가요?

**간단히 말하면**: 프로젝트별로 독립된 Python 환경을 만드는 것입니다.

**필요한 이유**: 다른 프로젝트와 패키지 충돌을 방지합니다.

자세한 내용: [Python 설치 가이드 Step 2](docs/python-setup-guide.md#step-2-가상환경이란)

---

### Q5. API 키는 어디서 받나요?

Week 3에 스터디장이 설명합니다.

`.env.local` 파일에 작성하고, `.gitignore`로 외부 유출이 방지됩니다.

---

### Q6. Project Skills vs Personal Skills 차이는?

- **Project Skills**: 이 프로젝트(gpters-20th-templates)에서만 사용 (`.claude/skills/`)
- **Personal Skills**: 내 컴퓨터의 모든 프로젝트에서 사용 (`~/.claude/skills/`)

**이번 스터디에서는?**
→ Project Skills를 중심으로 만들고 팀과 공유합니다!
→ 원하면 나중에 Personal Skills로도 등록 가능 (복사만 하면 됨)

---

### Q7. 중도에 막히면 어떻게 하나요?

1. **Claude에게 물어보기** - "이 에러가 뭐야?"
2. **문서 확인** - `docs/` 폴더 검색
3. **스터디 동료에게 질문** - 다같이 배우는 중!
4. **스터디장에게 문의** - 주차별 모임 때

---

## 🎯 성공 체크리스트

### Week 1 끝날 때
- [ ] `/setup-workspace` 실행 완료
- [ ] Python 설치 완료 (`python --version` 확인)
- [ ] 가상환경 생성 완료 (`venv/` 폴더 존재)
- [ ] 자동화 아이디어 1개 선정

### Week 2 끝날 때
- [ ] 음성 전사 Skill 1개 완성
- [ ] 실제 업무에 적용 테스트 완료

### Week 3 끝날 때
- [ ] Google Calendar Skill 완성
- [ ] 총 Skill 3개 이상 보유

### Week 4 끝날 때
- [ ] 최종 발표 완료
- [ ] 자동화 시스템 실전 운영 중
- [ ] 다른 사람에게 설명 가능

---

## 🆘 도움이 필요하면?

### 📚 문서 보기
- [Python 설치 가이드](docs/python-setup-guide.md) - 설치 문제
- [Skills 공식 문서](docs/skills.md) - Skill 만드는 법
- [setup-workspace 가이드](.claude/commands/setup-workspace.md) - 초기 설정

### 💬 Claude에게 물어보기
```
"Python 가상환경 활성화가 안돼요"
"openai-whisper 설치 에러가 나요"
"Skills와 Commands 차이가 뭐예요?"
```

### 👥 스터디 동료와 공유
- 같은 문제를 겪는 사람이 있을 수 있습니다
- 서로 도우며 배우는 것이 스터디의 핵심!

---

## 🎉 시작하기

준비되셨나요? 그럼 지금 바로 시작하세요!

```bash
# 1. 프로젝트 폴더로 이동
cd gpters-20th-templates

# 2. Claude Code에서 초기 설정 실행
/setup-workspace
```

4주 후, 여러분만의 자동화 도구를 갖게 될 것입니다! 🚀

---

**작성일**: 2025-12-26
**대상**: gpters 20기 프리랜서 스터디
**버전**: v1.0
