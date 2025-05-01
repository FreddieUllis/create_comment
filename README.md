# Create Comment – Godot 4 Toggle-Comment Plugin

[![Godot 4.x](https://img.shields.io/badge/Godot-4.x-blue.svg)](https://godotengine.org/)  
Mass-comment / uncomment selected lines (or the current line) in the Script Editor with one click.

## Features
* Adds a **“#”** button to the Script Editor toolbar.  
* Toggles comments on the selected block **without breaking indentation**.  
* Works with or without a text selection — cursor line is handled too.  
* Groups every toggle into a single **Undo / Redo** step.  
* Lightweight: one GDScript file + constants, no external assets.

## Installation
1. Copy the folder `addons/create_comment/` into your project.  
2. In **Project → Project Settings → Plugins**, enable **Create Comment**.  
3. (Optional) Assign a keyboard shortcut in **Editor → Editor Settings → Shortcuts → Plugins → Create Comment**.

## Usage
* **Select** one or more lines *or* place the caret on a single line.  
* Click the **“#”** button (or use your shortcut).  
  * If at least one line in the block is **not** commented, the block will be **commented** (`# ` prepended).  
  * If **all** lines start with `#`, they will be **uncommented** (one `#` + one following space are removed).

### Demo  
*(drop a short GIF here)*

## Compatibility
* Godot **4.x**.

## License
MIT – do whatever you want, just keep the license file.

---

# Create Comment – плагин Godot 4 для массового (раc-)комментирования

Кнопка «#» для Script Editor:

## Возможности
* Кнопка **“#”** в тулбаре Script Editor.  
* Комментирование / раскомментирование выделения **без сдвига отступов**.  
* Работает как с выделенным блоком, так и с одной строкой под курсором.  
* Одно действие **Undo / Redo** на весь блок.  
* Всего один скрипт + файл констант, без ресурсов.

## Установка
1. Скопируйте папку `addons/create_comment/` в ваш проект.  
2. Включите плагин: **Project → Project Settings → Plugins → Create Comment**.  
3. (По желанию) назначьте хот-кей: **Editor → Editor Settings → Shortcuts → Plugins → Create Comment**.

## Использование
1. **Выделите** несколько строк *или* поставьте курсор на строку.  
2. Нажмите кнопку **“#”** (или горячую клавишу).  
   * Если среди строк есть хотя бы одна **без `#`**, весь блок будет **закомментирован** (`# ` добавляется).  
   * Если **все** строки начинаются с `#`, блок будет **раскомментирован** (убирается `#` и одиночный пробел).

## Совместимость
* Godot **4.x**

## Лицензия
MIT – можно использовать где угодно, при условии сохранения файла лицензии.
