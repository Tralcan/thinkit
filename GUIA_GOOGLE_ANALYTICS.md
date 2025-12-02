# 📊 Guía: Configurar Google Analytics 4 (GA4)

## ¿Qué es Google Analytics 4?
Es la herramienta GRATUITA de Google para analizar el tráfico de tu sitio:
- Cuántas personas visitan tu sitio
- De dónde vienen (Google, LinkedIn, directo, etc.)
- Qué páginas ven
- Cuánto tiempo permanecen
- Conversiones (formularios completados)

---

## 📝 Paso a Paso

### PASO 1: Crear cuenta de Google Analytics

1. Ir a: https://analytics.google.com
2. Iniciar sesión con tu cuenta de Google
3. Click en **"Empezar a medir"**

### PASO 2: Configurar cuenta

**Nombre de la cuenta:**
```
ThinkIT
```

**Configuración de datos:**
- ✅ Marcar todas las opciones (recomendado)

Click en **"Siguiente"**

### PASO 3: Crear propiedad

**Nombre de la propiedad:**
```
ThinkIT Website
```

**Zona horaria:**
```
(GMT-03:00) Santiago
```

**Moneda:**
```
Peso chileno (CLP)
```

Click en **"Siguiente"**

### PASO 4: Detalles del negocio

**Sector:**
```
Tecnología > Servicios de TI y consultoría
```

**Tamaño de la empresa:**
```
Pequeña (1-10 empleados)
```

**Cómo piensas usar Google Analytics:**
- ✅ Examinar el comportamiento de los clientes
- ✅ Medir el rendimiento del sitio web

Click en **"Crear"**

### PASO 5: Aceptar términos

- ✅ Acepto los Términos de servicio de Google Analytics
- ✅ Acepto el Anexo de procesamiento de datos

Click en **"Acepto"**

### PASO 6: Configurar flujo de datos

**Plataforma:**
- Selecciona: **Web**

**URL del sitio web:**
```
https://thinkit.cl
```

**Nombre del flujo:**
```
ThinkIT Website
```

Click en **"Crear flujo"**

### PASO 7: Obtener código de medición

Verás una pantalla con tu **ID de medición**:
```
G-XXXXXXXXXX
```

**Copia este código:**

```html
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

---

## 🔧 PASO 8: Agregar código a tu sitio

### Opción A: Agregar manualmente (RECOMENDADO)

Voy a crear el código actualizado para ti. Solo necesito que me des tu ID de medición (G-XXXXXXXXXX).

El código debe ir en `index.html` y en `blog/cuando-necesita-pyme-cto-externo.html`, justo antes de `</head>`.

### Opción B: Usar Google Tag Manager (más avanzado)

Si planeas agregar más herramientas (Facebook Pixel, etc.), usa Tag Manager.

---

## ✅ Verificar que funcione

### 1. Después de agregar el código y subir al servidor:

1. Ir a Google Analytics
2. En el menú izquierdo → **Informes** → **Tiempo real**
3. Abrir tu sitio en otra pestaña: https://thinkit.cl
4. **Deberías ver 1 usuario activo en tiempo real** ✅

### 2. Si NO apareces:

**Posibles causas:**
- El código no está en el sitio (verifica)
- Tienes bloqueador de anuncios (desactívalo para probar)
- El código tiene errores (revisa consola del navegador F12)

---

## 📊 Configurar Conversiones (Importante)

### Objetivo: Rastrear formularios completados

1. En GA4 → **Configurar** → **Eventos**
2. Click en **"Crear evento"**
3. **Nombre del evento:** `form_submit`

**Configuración:**
```
Nombre del parámetro: event_name
Operador: es igual a
Valor: submit
```

4. Guardar

Ahora podrás ver cuántas personas completan tu formulario de contacto.

---

## 📈 Qué Monitorear (Semanalmente)

### 1. Adquisición de usuarios
**Dónde:** Informes → Adquisición → Adquisición de usuarios

**Métricas clave:**
- **Usuarios nuevos:** Cuántas personas nuevas visitan
- **Sesiones:** Total de visitas
- **Fuente/medio:** De dónde vienen
  - `google / organic` = Búsqueda de Google
  - `linkedin.com / referral` = Desde LinkedIn
  - `(direct) / (none)` = Escribieron URL directamente

### 2. Páginas y pantallas
**Dónde:** Informes → Interacción → Páginas y pantallas

**Métricas clave:**
- **Vistas:** Cuántas veces se vio cada página
- **Usuarios:** Cuántas personas únicas
- **Tiempo de interacción promedio:** Cuánto tiempo permanecen

### 3. Eventos
**Dónde:** Informes → Interacción → Eventos

**Métricas clave:**
- **form_submit:** Formularios completados
- **page_view:** Páginas vistas
- **click:** Clics en enlaces

---

## 🎯 Objetivos Primeros 3 Meses

| Métrica | Mes 1 | Mes 2 | Mes 3 |
|---------|-------|-------|-------|
| **Usuarios/mes** | 50-100 | 150-250 | 300-500 |
| **Sesiones/mes** | 60-120 | 180-300 | 360-600 |
| **Tasa de rebote** | 60-70% | 50-60% | 40-50% |
| **Tiempo promedio** | 1-2 min | 2-3 min | 3-4 min |
| **Conversiones/mes** | 1-2 | 3-5 | 5-10 |

---

## 🔗 Vincular con Search Console

**Beneficio:** Ver datos de búsqueda dentro de Analytics

1. En GA4 → **Administrador** (⚙️)
2. **Vínculos de Search Console**
3. **Vincular**
4. Seleccionar tu propiedad de Search Console
5. **Confirmar**

Ahora verás datos de búsqueda en:
**Informes → Adquisición → Search Console**

---

## 📧 Configurar Informes Automáticos

1. En GA4 → **Biblioteca**
2. **Crear informe personalizado**
3. Agregar métricas importantes:
   - Usuarios nuevos
   - Sesiones
   - Conversiones
   - Páginas más visitadas

4. **Programar envío por email:**
   - Frecuencia: Semanal (lunes 9am)
   - Destinatario: Tu email

---

## ⚠️ Problemas Comunes

### "No veo datos en tiempo real"
**Solución:**
1. Verifica que el código esté en el `<head>` del HTML
2. Verifica que el ID sea correcto (G-XXXXXXXXXX)
3. Desactiva bloqueadores de anuncios
4. Abre consola del navegador (F12) y busca errores

### "Los datos tardan en aparecer"
**Normal:** Los informes pueden tardar 24-48 horas en poblarse
**Tiempo real:** Debe funcionar inmediatamente

### "Muchas visitas de spam/bots"
**Solución:**
1. En GA4 → **Administrador** → **Flujos de datos**
2. Click en tu flujo web
3. **Configuración de etiquetas**
4. Activar: **Excluir referencias no deseadas**

---

## 🎓 Recursos de Aprendizaje

- **Curso oficial gratuito:** https://analytics.google.com/analytics/academy/
- **Ayuda de GA4:** https://support.google.com/analytics
- **Comunidad:** https://support.google.com/analytics/community

---

## ✅ Checklist de Verificación

- [ ] Cuenta de Google Analytics creada
- [ ] Propiedad "ThinkIT Website" creada
- [ ] Flujo de datos web configurado
- [ ] ID de medición obtenido (G-XXXXXXXXXX)
- [ ] Código agregado a index.html
- [ ] Código agregado a blog/*.html
- [ ] Archivos subidos al servidor
- [ ] Verificado en "Tiempo real" (1 usuario activo)
- [ ] Vinculado con Search Console
- [ ] Evento de conversión configurado
- [ ] Informe semanal programado

---

## 💡 Tips Importantes

### 1. Privacidad
GA4 cumple con GDPR y regulaciones de privacidad.
**Considera agregar:** Banner de cookies (opcional en Chile, pero buena práctica)

### 2. Filtros
**Excluir tu propia IP:**
1. Administrador → Flujos de datos → Configuración de etiquetas
2. Crear filtro de IP
3. Agregar tu IP (busca en: whatismyip.com)

### 3. Segmentos útiles
- **Tráfico orgánico:** Solo desde Google
- **Tráfico de LinkedIn:** Solo desde LinkedIn
- **Conversiones:** Solo usuarios que completaron formulario

---

**Tiempo total estimado:** 10-15 minutos

**Próximo paso:** Configurar Google My Business →
