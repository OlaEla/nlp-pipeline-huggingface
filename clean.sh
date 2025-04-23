#!/bin/bash

# Запуск скрипта:
# chmod +x clean.sh  # Даем права на выполнение
# ./clean.sh


# Очистка Python-пакетов
echo -e "\033[36mУдаление Python-пакетов...\033[0m"
pip uninstall -y diffusers transformers torch torchvision accelerate

# Очистка кэша Hugging Face (два варианта)
echo -e "\033[36mОчистка кэша моделей...\033[0m"
rm -rf ~/.cache/huggingface/hub/  # Для WSL/Linux-подсистем
# ИЛИ для чистого Windows:
# rm -rf "$USERPROFILE/.cache/huggingface/hub/"

# Очистка кэша pip
echo -e "\033[36mОчистка кэша pip...\033[0m"
python -m pip cache purge

echo -e "\033[32mОчистка завершена!\033[0m"