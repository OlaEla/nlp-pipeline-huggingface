# Hugging Face NLP Pipeline

## О проекте

Демонстрация возможностей библиотеки `transformers` от Hugging Face для решения задач обработки естественного языка (NLP). Проект включает:

- **Question Answering** — ответы на вопросы по контексту (модель `rubert-large-squad`)
- **Sentiment Analysis** — классификация эмоциональной окраски текстов (модель `rubert-tiny2-ru-go-emotions`)
- **Code Autocompletion** — предсказание методов для Python-кода (модель `CodeBERTa-small-v1`)

**Бизнес-ценность:** Готовые примеры интеграции state-of-the-art NLP-моделей, которые могут быть адаптированы под задачи анализа отзывов, чат-ботов, автоматической обработки документов.

## Технологический стек

| Компонент | Технология |
|-----------|------------|
| Язык | Python |
| NLP-библиотека | Hugging Face Transformers |
| Модели | rubert-large-squad, rubert-tiny2-ru-go-emotions, CodeBERTa |
| Визуализация | matplotlib, pandas |
| Среда | Jupyter Notebook |

## Возможности

### 1. Question Answering (Extractive QA)

Модель отвечает на вопросы по заданному контексту на русском языке.

**Пример:**
- Контекст: информация о Моцарте
- Вопрос: "Моцарт был кавалером какого ордена?"
- Ответ: "Золотой шпоры" (confidence: 59%)

### 2. Sentiment Analysis

Классификация эмоциональной окраски текстов с переводом меток на русский язык.

| Текст | Эмоция | Уверенность |
|-------|--------|-------------|
| "Отличный товар" | восхищение | 91.8% |
| "Спасибо за быструю доставку" | признательность | 93.1% |
| "Это просто ужасно!" | отвращение | 21.9% |

### 3. Code Autocompletion

Модель предсказывает наиболее вероятные методы для Python-кода.

**Пример:**
```python
my_numbers = [10, 8, 3, 22, 33]
my_numbers.<mask>  # → sort (53.5%)
```

## Запуск проекта

# Установка зависимостей
pip install transformers torch pandas matplotlib

# Запуск Jupyter Notebook
jupyter notebook GB_Transfer_Learning_Huggingface.ipynb

## Автор

Олег Елагин — [GitHub](https://github.com/OlaEla)
