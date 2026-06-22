# Descripción del proyecto — Daily Tarot Card Bot

## Resumen

**Daily Tarot Card Bot** es un bot de Telegram que envía cada mañana una carta de tarot aleatoria con una imagen, un significado breve y una pregunta de reflexión.

El proyecto está diseñado para entretenimiento y autoobservación. No ofrece asesoramiento profesional.

## Funciones principales

- envío diario programado;
- selección aleatoria de cartas;
- imagen y descripción;
- historial de entregas en PostgreSQL;
- automatización con n8n;
- configuración de demostración sin secretos reales.

## Flujo

```text
Usuario suscrito
      ↓
Workflow programado
      ↓
Selección aleatoria
      ↓
Preparación de imagen y texto
      ↓
Envío por Telegram
      ↓
Registro de entrega
```

## Tecnologías

- Telegram Bot API
- n8n
- PostgreSQL
- workflows programados
- dataset JSON de cartas

## Posibles mejoras

- horario individual por usuario;
- significados en varios idiomas;
- protección contra cartas repetidas;
- pausa y reactivación de la suscripción;
- estadísticas de entrega.

## Aviso

Este bot es solo para entretenimiento y reflexión personal. No proporciona asesoramiento médico, legal, financiero, psicológico ni profesional.
