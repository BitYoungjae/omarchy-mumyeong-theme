# Mumyeong Theme - Color Palette Reference

## Theme Base: Omarchy "Mumyeong (무명)" Edition v2.0

이 테마는 사용자의 배경화면을 주인공으로 만들기 위해 설계된 **"Neutral Void (무채색의 공허)"** 팔레트의 **강화된 적응형 에디션**입니다. 투명도가 적용된 글래스모피즘 환경에서도 접근성(WCAG AA+)을 준수하며, 어떤 배경에서도 정보가 명확히 전달되도록 설계되었습니다.

**주요 개선 사항 (v2.0):**

- **Deep Carbon Base**: 투명도 적용 시 텍스트가 떠 보이는 현상을 막기 위해 베이스 명도를 극한으로 낮춤
- **High-Contrast Borders**: 비활성 창이 배경에 묻히지 않도록 테두리 명도를 상향하여 '유리 단면' 느낌 구현
- **Luminous Selection**: Walker 등에서 가독성이 떨어지는 '배경 반전(검정 텍스트)' 방식을 폐기하고, '빛나는 테두리와 순백색 텍스트' 조합으로 변경

---

## Base Palette (16 Colors)

### Carbon Layers (Dark Backgrounds)

| Name | Hex       | RGB              | 용도                                 |
| ---- | --------- | ---------------- | ------------------------------------ |
| oma0 | `#09090B` | rgb(9, 9, 11)    | 가장 어두운 배경, 메인 배경색 (Void) |
| oma1 | `#18181B` | rgb(24, 24, 27)  | 패널 배경, 헤더 (Onyx)               |
| oma2 | `#27272A` | rgb(39, 39, 42)  | 선택된 항목 배경, 입력창 (Charcoal)  |
| oma3 | `#71717A` | rgb(113,113,122) | **비활성 테두리**, UI 구분선 (Zinc)  |

> **변경점:** `oma3`를 기존 `#52525B`에서 `#71717A`로 밝게 조정했습니다. 이는 투명한 창이 복잡한 배경 위에 있을 때도 창의 경계(유리 모서리)를 선명하게 보여줍니다.

### Frost Mist (Light Foregrounds)

| Name | Hex       | RGB                | 용도                                   |
| ---- | --------- | ------------------ | -------------------------------------- |
| oma4 | `#A1A1AA` | rgb(161, 161, 170) | 기본 텍스트, 설명문 (Mist Gray)        |
| oma5 | `#E4E4E7` | rgb(228, 228, 231) | 밝은 텍스트, 라벨 (Platinum)           |
| oma6 | `#FFFFFF` | rgb(255, 255, 255) | **강조 텍스트**, 아이콘, 선택됨 (Snow) |

> **변경점:** 선택된 상태의 텍스트는 무조건 `oma6`(순백색)를 사용하여 가독성을 최우선으로 확보합니다.

### Phantom Accents (Primary Highlights)

| Name  | Hex       | RGB                | 용도                                              |
| ----- | --------- | ------------------ | ------------------------------------------------- |
| oma7  | `#52525B` | rgb(82, 82, 91)    | 비활성 텍스트, 깊은 메타데이터                    |
| oma8  | `#F4F4F5` | rgb(244, 244, 245) | **주요 강조(Accent)**, 활성 테두리 (Ghost Silver) |
| oma9  | `#94A3B8` | rgb(148, 163, 184) | 2차 강조색, 링크, 정보 (Slate Blue)               |
| oma10 | `#CBD5E1` | rgb(203, 213, 225) | 코드 블록, 차가운 금속성 강조                     |

> **설계 의도:** `oma8`을 `#E2E8F0`에서 `#F4F4F5`(거의 흰색)로 변경했습니다. 이는 투명도가 들어간 UI에서 '색상'이 아닌 순수한 '빛'으로 강조하기 위함입니다.

### Muted Semantic (Semantic Colors)

| Name  | Hex       | RGB                | 용도                                  |
| ----- | --------- | ------------------ | ------------------------------------- |
| oma11 | `#E08A8A` | rgb(224, 138, 138) | 오류, 위험 (Muted Rose)               |
| oma12 | `#D9A67E` | rgb(217, 166, 126) | 주황색 강조 (Sand)                    |
| oma13 | `#D4C88C` | rgb(212, 200, 140) | 경고 (Brass)                          |
| oma14 | `#81C784` | rgb(129, 199, 132) | 성공 (Pale Emerald) - 가독성 상향조정 |
| oma15 | `#C4A6CF` | rgb(196, 166, 207) | 보라/분홍 강조 (Thistle)              |

---

## Applied Colors by Component

### Hyprland (Window Manager)

| 역할             | 색상 변수         | 실제 색상 | 비고 (투명도 전략) |
| ---------------- | ----------------- | --------- | ------------------ |
| Active Border    | `$oma8`           | `#F4F4F5` | **Luminous White** |
| Inactive Border  | `$oma3`           | `#71717A` | 유리 단면 효과     |
| Window Rounding  | 10px              | -         | -                  |
| Inactive Opacity | 0.80              | -         | 배경 비침          |
| Active Opacity   | 0.90              | -         | 흐릿한 유리 효과   |
| Shadow           | `rgba(0,0,0,0.5)` | -         | 깊이감 강화        |

### Hyprlock (Lock Screen)

| 역할                | 색상 변수 | 실제 색상               |
| ------------------- | --------- | ----------------------- |
| Background Color    | `$oma0`   | `rgba(9,9,11,0.6)`      |
| Inner Color (Input) | `$oma1`   | `rgba(24,24,27,0.6)`    |
| Outer/Font Color    | `$oma5`   | `rgba(228,228,231,1.0)` |
| Check Color         | `$oma8`   | `rgba(244,244,245,1.0)` |
| Fail Color          | `$oma11`  | `rgba(224,138,138,1.0)` |

### Waybar (Status Bar)

| 역할                          | 색상 변수 | 실제 색상 |
| ----------------------------- | --------- | --------- |
| Background                    | `@oma0`   | `#09090B` |
| Foreground                    | `@oma5`   | `#E4E4E7` |
| Highlight (Active Workspaces) | `@oma8`   | `#F4F4F5` |
| Warning                       | `@oma13`  | `#D4C88C` |
| Critical                      | `@oma11`  | `#E08A8A` |

### Walker (App Launcher) - **CRITICAL FIX**

기존의 '밝은 배경 + 어두운 텍스트' 방식은 투명화 시 대비가 무너집니다.
**'어두운 배경 + 밝은 테두리/텍스트'** 방식으로 변경하여 가독성을 해결했습니다.

| 역할                | 색상 변수 | 실제 색상 | 변경 사유                           |
| ------------------- | --------- | --------- | ----------------------------------- |
| Base/Background     | `@oma0`   | `#09090B` | 투명도 0.7 적용 권장                |
| Foreground/Text     | `@oma4`   | `#A1A1AA` | 기본 상태는 회색조                  |
| **Selected Text**   | `@oma6`   | `#FFFFFF` | **가독성 핵심**: 선택 시 순백색     |
| **Selected BG**     | `@oma2`   | `#27272A` | 은은한 강조 배경                    |
| **Selected Border** | `@oma8`   | `#F4F4F5` | **Highlight**: 외곽선으로 선택 표현 |

### SwayOSD (On-Screen Display)

| 역할               | 색상 변수 | 실제 색상 |
| ------------------ | --------- | --------- |
| Background         | `@oma0`   | `#09090B` |
| Border             | `@oma3`   | `#71717A` |
| Label              | `@oma6`   | `#FFFFFF` |
| Image/Progress Bar | `@oma8`   | `#F4F4F5` |

### Ghostty (Terminal)

| 역할                 | 값                                           |
| -------------------- | -------------------------------------------- |
| Background           | `#09090B` (oma0) - _Deep Void_               |
| Foreground           | `#D4D4D8` (oma4 조정됨)                      |
| Selection BG         | `#27272A` (oma2)                             |
| Cursor               | `#F4F4F5` (oma8)                             |
| Palette 0-7 (Normal) | `oma0`, `oma11`~`oma14`, `oma9`, `oma4` 매핑 |

---

## Color Relationships

### 배경 계층 (Deep Void → Zinc)

```
oma0 → oma1 → oma2 → oma3
#09090B → #18181B → #27272A → #71717A
(Void)    (Onyx)    (Charcoal)(Glass Edge)
```

### 텍스트 계층 (가독성 중심)

```
oma4 → oma5 → oma6
#A1A1AA → #E4E4E7 → #FFFFFF
(Body)    (Label)   (Highlight)
```

### Semantic 색상 매핑 (안전한 대비비)

```
Primary Accent: oma8 (#F4F4F5) - 고스트 실버 (어두운 배경 위에서 가장 빛나는 무채색)
Secondary: oma9 (#94A3B8) - 슬레이트 블루
Error: oma11 (#E08A8A) - 뮤트 로즈
Success: oma14 (#81C784) - 페일 에메랄드 (어두운 배경 가독성 최적화)
```

---

## Configuration Files Update Guide

| 파일명          | 수정 포인트                                                         |
| --------------- | ------------------------------------------------------------------- |
| `walker.css`    | `.item.active`의 `color`를 `#FFFFFF`로, `border`를 `#F4F4F5`로 설정 |
| `hyprland.conf` | `col.inactive_border`를 `rgb(71717a)`로 변경하여 윤곽선 확보        |
| `waybar.css`    | `background-color`를 `#09090b`로 변경하여 깊이감 추가               |

---

## Notes for Palette Redesign (전문가 소견)

1. **Walker 가독성 해결 (Inversion vs Glow)**:
   - 기존의 "선택 시 텍스트 검정색 반전"은 불투명(Opaque) 테마에서는 좋지만, 투명 테마에서는 배경색이 탁해져 글씨가 안 보이는 치명적 단점이 있었습니다.
   - 이를 해결하기 위해 **"텍스트는 더 밝게(White), 배경은 은은하게(Dark Grey), 테두리는 선명하게(Bright Silver)"** 처리하는 **Glow/Outline 기법**을 적용했습니다.

2. **경계선의 중요성**:
   - 어두운 배경화면 위에서 어두운 회색 테두리(`#52525B`)는 보이지 않습니다. 유리판의 절단면이 빛을 받아 하얗게 빛나는 것처럼, 비활성 테두리를 `#71717A`까지 밝혀 시각적 구분감을 주었습니다.

3. **순도 높은 무채색**:
   - 기존 `#101012`보다 더 깊고 푸른기가 적은 `#09090B`를 베이스로 채택하여, 어떤 화려한 월페이퍼 위에서도 완벽한 '공허(Void)'의 역할을 수행하도록 했습니다.
