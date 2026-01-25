if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2025-08-06 12:26:55
set PATH $PATH /home/arka/.local/bin

set -x SAL_USE_VCLPLUGIN gtk4

# Оптимизация для VS Code
if set -q VSCODE_INJECTION
    set -g fish_greeting ""
end

# Дополнительная оптимизация для VS Code
if set -q VSCODE_INJECTION
    # Отключаем медленные проверки при старте
    set -g fish_escape_delay_ms 10
    # Ускоряем автодополнение
    set -g fish_autosuggestion_enabled 1
end

# Ленивая загрузка инструментов (только при использовании)
function nvm --on-event nvm
    # Загружаем nvm только когда нужно
end

# Отключаем shell integration VS Code (устраняет лаги)
if set -q VSCODE_INJECTION
    functions -e __fish_vscode_postexec
end
