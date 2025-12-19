# Mumyeong Theme - Color Palette Reference

## Theme Base: Omarchy "Mumyeong (무명)" Edition

이 테마는 사용자의 배경화면을 주인공으로 만들기 위해 설계된 **"Neutral Void (무채색의 공허)"** 팔레트의 **적응형 에디션**입니다. UI가 색상을 주장하기보다는 유리처럼 투명하고 중립적인 역할을 하도록 설계되었습니다.

**주요 개선 사항:**

- **완전 무채색 베이스**: 배경색에서 푸른기나 붉은기를 완전히 제거한 'Carbon Grey' 사용
- **고스트 톤 강조색**: 유채색 대신 '은색(Silver)'과 '슬레이트(Slate)'를 메인으로 사용하여 배경 충돌 방지
- **글래스모피즘 최적화**: 반투명 적용 시 가장 예쁘게 블러링(Blur)되는 명도 단계 설정

---

## Base Palette (16 Colors)

### Carbon Layers (Dark Backgrounds)

| Name | Hex       | RGB             | 용도                                   |
| ---- | --------- | --------------- | -------------------------------------- |
| oma0 | `#101012` | rgb(16, 16, 18) | 가장 어두운 배경, 메인 배경색 (Carbon) |
| oma1 | `#18181B` | rgb(24, 24, 27) | 패널 배경, 상태바 배경 (Onyx)          |
| oma2 | `#27272A` | rgb(39, 39, 42) | 선택된 항목 배경, 입력창 (Charcoal)    |
| oma3 | `#52525B` | rgb(82, 82, 91) | 비활성 테두리, UI 구분선 (Zinc Grey)   |

### Frost Mist (Light Foregrounds)

| Name | Hex       | RGB                | 용도                                 |
| ---- | --------- | ------------------ | ------------------------------------ |
| oma4 | `#D4D4D8` | rgb(212, 212, 216) | 기본 텍스트, 메인 전경색 (Mist Gray) |
| oma5 | `#E4E4E7` | rgb(228, 228, 231) | 밝은 텍스트 (Platinum)               |
| oma6 | `#FAFAFA` | rgb(250, 250, 250) | 가장 밝은 텍스트, 순백색 강조 (Snow) |

### Phantom Accents (Primary Highlights)

| Name  | Hex       | RGB                | 용도                                               |
| ----- | --------- | ------------------ | -------------------------------------------------- |
| oma7  | `#A1A1AA` | rgb(161, 161, 170) | 보조 강조(Metallic), 클래스, 메타데이터            |
| oma8  | `#E2E8F0` | rgb(226, 232, 240) | **주요 강조색(Primary Accent)**, 활성 테두리 (Ice) |
| oma9  | `#94A3B8` | rgb(148, 163, 184) | 2차 강조색(Slate Blue), 키워드, 링크               |
| oma10 | `#CBD5E1` | rgb(203, 213, 225) | 함수, 메서드, 차가운 금속성 강조                   |

### Muted Semantic (Semantic Colors)

| Name  | Hex       | RGB                | 용도                                  |
| ----- | --------- | ------------------ | ------------------------------------- |
| oma11 | `#E08A8A` | rgb(224, 138, 138) | 오류, 위험 (Muted Rose) - 채도 낮춤   |
| oma12 | `#D9A67E` | rgb(217, 166, 126) | 주황색 강조 (Sand) - 채도 낮춤        |
| oma13 | `#D4C88C` | rgb(212, 200, 140) | 경고, 노란색 강조 (Brass) - 채도 낮춤 |
| oma14 | `#8ABFA3` | rgb(138, 191, 163) | 성공, 문자열 (Sage Green) - 채도 낮춤 |
| oma15 | `#C4A6CF` | rgb(196, 166, 207) | 보라/분홍 강조 (Thistle) - 채도 낮춤  |

---

## Applied Colors by Component

### Hyprland (Window Manager)

| 역할             | 색상 변수 | 실제 색상 | 비고 (투명도 전략) |
| ---------------- | --------- | --------- | ------------------ |
| Active Border    | `$oma8`   | `#E2E8F0` | **화이트 실버**    |
| Inactive Border  | `$oma3`   | `#52525B` | 어두운 회색        |
| Window Rounding  | 10px      | -         | 부드러움 강조      |
| Inactive Opacity | 0.80      | -         | 배경 비침 극대화   |
| Active Opacity   | 0.90      | -         | 흐릿한 유리 효과   |

### Hyprlock (Lock Screen)

| 역할                | 색상 변수 | 실제 색상               |
| ------------------- | --------- | ----------------------- |
| Background Color    | `$oma0`   | `rgba(16,16,18,0.6)`    |
| Inner Color (Input) | `$oma2`   | `rgba(39,39,42,0.6)`    |
| Outer/Font Color    | `$oma5`   | `rgba(228,228,231,1.0)` |
| Check Color         | `$oma8`   | `rgba(226,232,240,1.0)` |
| Fail Color          | `$oma11`  | `rgba(224,138,138,1.0)` |

### Waybar (Status Bar)

| 역할                          | 색상 변수 | 실제 색상 |
| ----------------------------- | --------- | --------- |
| Background                    | `@oma0`   | `#101012` |
| Foreground                    | `@oma5`   | `#E4E4E7` |
| Highlight (Active Workspaces) | `@oma8`   | `#E2E8F0` |
| Warning                       | `@oma13`  | `#D4C88C` |
| Critical                      | `@oma11`  | `#E08A8A` |
| Success/Info                  | `@oma9`   | `#94A3B8` |

### Walker (App Launcher)

| 역할                | 색상 변수        | 실제 색상 |
| ------------------- | ---------------- | --------- |
| Base/Background     | `@base`          | `#101012` |
| Foreground/Text     | `@text`          | `#D4D4D8` |
| Selected Text       | `@selected-text` | `#101012` |
| Selected Background | `@hover`         | `#E2E8F0` |
| Border              | `@border`        | `#52525B` |

### SwayOSD (On-Screen Display)

| 역할               | 색상 변수 | 실제 색상 |
| ------------------ | --------- | --------- |
| Background         | `@oma0`   | `#101012` |
| Border             | `@oma3`   | `#52525B` |
| Label              | `@oma5`   | `#E4E4E7` |
| Image/Progress Bar | `@oma8`   | `#E2E8F0` |

### Ghostty (Terminal)

| 역할                  | 값                                                    |
| --------------------- | ----------------------------------------------------- |
| Theme                 | Custom (Mumyeong)                                     |
| Background            | `#101012` (oma0) - _Set opacity 0.8 in config_        |
| Foreground            | `#D4D4D8` (oma4)                                      |
| Selection BG          | `#52525B` (oma3)                                      |
| Cursor                | `#E2E8F0` (oma8)                                      |
| Palette 0-7 (Normal)  | `oma0`, `oma11`~`oma14`, `oma9`, `oma4` 매핑          |
| Palette 8-15 (Bright) | `oma3`, `oma11`~`oma14`, `oma15`, `oma9`, `oma6` 매핑 |

---

## Color Relationships

### 배경 계층 (매트 블랙 → 그레이)

```
oma0 → oma1 → oma2 → oma3
#101012 → #18181B → #27272A → #52525B
```

### 텍스트 계층 (회색 → 플래티넘 → 스노우 화이트)

```
oma4 → oma5 → oma6
#D4D4D8 → #E4E4E7 → #FAFAFA
```

### Semantic 색상 매핑 (Desaturated for Harmony)

```
Primary Accent: oma8 (#E2E8F0) - 아이스 화이트 (어떤 배경에서도 잘 보임)
Secondary Accent: oma9 (#94A3B8) - 슬레이트 블루 (차분한 링크 색상)
Error/Danger: oma11 (#E08A8A) - 뮤트 로즈 (눈이 아프지 않은 빨강)
Warning: oma13 (#D4C88C) - 브라스 골드
Success: oma14 (#8ABFA3) - 세이지 그린
Special: oma15 (#C4A6CF) - 엉겅퀴색 (Thistle)
```

---

## Configuration Files

| 파일명          | 대상 앱          | 형식                               |
| --------------- | ---------------- | ---------------------------------- |
| `hyprland.conf` | Hyprland WM      | `$oma_var = rgb(HEX)`              |
| `hyprlock.conf` | Hyprlock         | `$oma_var = rgba(R,G,B,A)`         |
| `waybar.css`    | Waybar           | `@define-color oma-name #HEX`      |
| `walker.css`    | Walker           | `@define-color oma-name #HEX`      |
| `swayosd.css`   | SwayOSD          | `@define-color oma-name #HEX`      |
| `ghostty.conf`  | Ghostty Terminal | `palette = 0=#HEX ...` (직접 정의) |

---

## Notes for Palette Redesign (설계 의도)

1. **배경화면 독립성 (Wallpaper Agnostic)**:
   - 메인 컬러를 특정 색상(파랑, 보라 등)이 아닌 **'빛(Light)' 자체를 상징하는 밝은 회색/흰색(`oma8`)**으로 설정했습니다. 이는 붉은 배경이든 푸른 배경이든 모두 어울립니다.
2. **무채색 캔버스**:
   - 배경색(`oma0`~`oma2`)을 `Deep Blue` 계열에서 완전한 `Neutral Grey` 계열로 변경했습니다. 유채색 배경화면 위에 창이 떴을 때 색이 섞여 탁해지는 현상을 방지합니다.
3. **글래스모피즘 전제**:
   - 이 팔레트는 **투명도 80% + 블러** 설정을 전제로 색을 뽑았습니다. 불투명할 때는 단정하고 깔끔하며, 투명할 때는 배경 색을 은은하게 머금도록 명도를 조절했습니다.
4. **저채도 시맨틱**:
   - 에러(Error)나 경고(Warning) 색상조차도 파스텔 톤보다 더 채도를 낮춘 '뮤트(Muted)' 톤을 사용하여, 화려한 배경화면 위에서도 UI가 시각적으로 싸우지 않도록 했습니다.
