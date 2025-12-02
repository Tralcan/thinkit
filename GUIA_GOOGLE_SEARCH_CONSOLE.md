# 🔍 Guía: Configurar Google Search Console

## ¿Qué es Google Search Console?
Es una herramienta GRATUITA de Google que te permite:
- Ver cómo Google ve tu sitio
- Monitorear posiciones en búsquedas
- Detectar errores de indexación
- Ver qué keywords traen tráfico
- Enviar sitemap para indexación más rápida

---

## 📝 Paso a Paso

### PASO 1: Acceder a Search Console
1. Ir a: https://search.google.com/search-console
2. Iniciar sesión con tu cuenta de Google
3. Click en "Agregar propiedad"

### PASO 2: Seleccionar tipo de propiedad
Verás 2 opciones:

**Opción A: Dominio** (requiere DNS)
- ❌ Más complejo
- Requiere acceso a DNS

**Opción B: Prefijo de URL** ✅ RECOMENDADO
- ✅ Más fácil
- Solo requiere subir un archivo

**Selecciona:** Prefijo de URL
**Ingresa:** https://thinkit.cl

### PASO 3: Verificar propiedad

Google te mostrará varios métodos. **Usa el método de archivo HTML:**

1. **Descargar archivo de verificación**
   - Google te dará un archivo como: `google1234567890abcdef.html`
   - Descárgalo

2. **Subir archivo a tu servidor**
   - Súbelo a la RAÍZ de tu sitio
   - Debe quedar en: `https://thinkit.cl/google1234567890abcdef.html`

3. **Verificar que sea accesible**
   - Abre en navegador: `https://thinkit.cl/google1234567890abcdef.html`
   - Debe mostrar el contenido del archivo

4. **Click en "Verificar" en Search Console**
   - Google verificará el archivo
   - ✅ Si todo está bien, verás: "Propiedad verificada"

### PASO 4: Enviar sitemap.xml

Una vez verificado:

1. En el menú izquierdo → **Sitemaps**
2. En "Agregar un sitemap nuevo"
3. Escribe: `sitemap.xml`
4. Click en **Enviar**

**Resultado esperado:**
- Estado: "Correcto"
- URLs descubiertas: 7 (o las que tengas)

---

## ⏱️ Tiempo de Indexación

- **Primeras 24 horas:** Google empieza a rastrear
- **2-7 días:** Primeras páginas indexadas
- **2-4 semanas:** Indexación completa

---

## 📊 Qué Monitorear (Semanalmente)

### 1. Rendimiento
- **Clics totales:** Cuántas personas hicieron click desde Google
- **Impresiones:** Cuántas veces apareció tu sitio en resultados
- **CTR:** % de clics vs impresiones
- **Posición promedio:** En qué posición apareces

### 2. Cobertura
- **Páginas válidas:** Páginas indexadas correctamente
- **Errores:** Páginas con problemas
- **Excluidas:** Páginas no indexadas (normal para algunas)

### 3. Mejoras
- **Core Web Vitals:** Métricas de performance
- **Usabilidad móvil:** Problemas en móviles

---

## 🎯 Objetivos Primeros 3 Meses

| Métrica | Mes 1 | Mes 2 | Mes 3 |
|---------|-------|-------|-------|
| **Impresiones/semana** | 50-100 | 150-250 | 300-500 |
| **Clics/semana** | 2-5 | 8-15 | 20-40 |
| **CTR** | 2-3% | 3-4% | 4-6% |
| **Posición promedio** | 30-50 | 20-30 | 15-25 |

---

## ⚠️ Problemas Comunes

### "No se pudo verificar la propiedad"
**Solución:**
- Verifica que el archivo esté en la raíz (no en carpeta)
- Verifica que sea accesible públicamente
- Espera 5 minutos y vuelve a intentar

### "Sitemap no se pudo leer"
**Solución:**
- Verifica: https://thinkit.cl/sitemap.xml
- Debe mostrar XML válido
- Valida en: https://www.xml-sitemaps.com/validate-xml-sitemap.html

### "Páginas no indexadas"
**Solución:**
- Es normal las primeras semanas
- Google toma tiempo en indexar
- Asegúrate de que robots.txt permita el rastreo

---

## ✅ Checklist de Verificación

- [ ] Cuenta de Google Search Console creada
- [ ] Propiedad https://thinkit.cl agregada
- [ ] Archivo de verificación subido y accesible
- [ ] Propiedad verificada exitosamente
- [ ] sitemap.xml enviado
- [ ] Sitemap procesado sin errores
- [ ] Configurar notificaciones por email

---

## 📧 Configurar Notificaciones

1. En Search Console → **Configuración** (⚙️)
2. **Usuarios y permisos**
3. Agregar tu email
4. Marcar: "Recibir notificaciones por email"

**Recibirás alertas sobre:**
- Errores críticos de indexación
- Problemas de seguridad
- Penalizaciones manuales

---

## 🔗 Recursos Útiles

- **Ayuda oficial:** https://support.google.com/webmasters
- **Curso gratuito:** https://developers.google.com/search/docs
- **Comunidad:** https://support.google.com/webmasters/community

---

**Tiempo total estimado:** 15-20 minutos

**Próximo paso:** Configurar Google Analytics 4 →
