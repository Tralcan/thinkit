# ✅ Checklist SEO - ThinkIT.cl

## 🔴 CRÍTICO - Hacer AHORA (Esta Semana)

- [ ] **Reemplazar index.html actual con la versión optimizada**
  ```bash
  cd /Users/danguita/Documents/Desarrollos/thinkit/thinkit
  cp index.html index_backup.html
  cp index_seo_optimized.html index.html
  git add index.html
  git commit -m "SEO: Implementar meta tags, datos estructurados y mejoras de accesibilidad"
  git push
  ```

- [ ] **Crear Google My Business**
  - URL: https://business.google.com
  - Categoría: "Consultor de tecnología de la información"
  - Completar 100% del perfil
  - Agregar fotos (logo, equipo, oficina)

- [ ] **Instalar Google Search Console**
  - URL: https://search.google.com/search-console
  - Verificar propiedad del sitio
  - Enviar sitemap (crear sitemap.xml)

- [ ] **Instalar Google Analytics 4**
  - URL: https://analytics.google.com
  - Crear propiedad para thinkit.cl
  - Agregar código de seguimiento al HTML

- [ ] **Verificar teléfono en el sitio**
  - Actual en código: +56 9 1234 5678
  - Correcto según análisis: +56 9 9345 7544
  - ⚠️ VERIFICAR cuál es el correcto

---

## 🟡 IMPORTANTE - Hacer en 2 Semanas

- [ ] **Optimizar imágenes**
  ```bash
  # Instalar herramienta
  npm install -g sharp-cli
  
  # Convertir logo a WebP
  sharp -i logo.png -o logo.webp --webp
  
  # Convertir logos de clientes
  cd clientes
  for file in *.png; do
    sharp -i "$file" -o "${file%.png}.webp" --webp
  done
  ```

- [ ] **Compilar Tailwind CSS localmente**
  ```bash
  npm install -D tailwindcss
  npx tailwindcss init
  npx tailwindcss -i ./src/input.css -o ./dist/output.css --minify
  ```

- [ ] **Crear sitemap.xml**
  ```xml
  <?xml version="1.0" encoding="UTF-8"?>
  <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <url>
      <loc>https://thinkit.cl/</loc>
      <lastmod>2025-12-02</lastmod>
      <priority>1.0</priority>
    </url>
  </urlset>
  ```

- [ ] **Crear robots.txt**
  ```txt
  User-agent: *
  Allow: /
  Sitemap: https://thinkit.cl/sitemap.xml
  ```

---

## 🟢 MEDIO PLAZO - Hacer en 1 Mes

- [ ] **Crear sección de Blog**
  - Estructura: /blog/index.html
  - Primer artículo: "¿Qué es un CTO externo?"
  - Segundo artículo: "5 señales de que tu PYME necesita asesoría TI"

- [ ] **Crear páginas de servicios individuales**
  - /servicios/estrategia-ti.html
  - /servicios/ciberseguridad.html
  - /servicios/business-intelligence.html

- [ ] **Solicitar reseñas a clientes**
  - OKParking
  - Autoteck
  - Conelse
  - (Objetivo: 5 reseñas en GMB)

---

## 📊 MONITOREO CONTINUO

- [ ] **Revisar Google Search Console semanalmente**
  - Errores de indexación
  - Posiciones de keywords
  - Impresiones y clics

- [ ] **Revisar Google Analytics mensualmente**
  - Tráfico orgánico
  - Páginas más visitadas
  - Tasa de conversión del formulario

- [ ] **Auditoría SEO trimestral**
  - PageSpeed Insights
  - Screaming Frog
  - Actualizar este checklist

---

## 🎯 OBJETIVOS 3 MESES

- [ ] **Tráfico orgánico:** 100+ visitas/mes
- [ ] **Posición promedio:** Top 20 para "asesoría tecnológica Chile"
- [ ] **Páginas indexadas:** 10+ páginas
- [ ] **Conversiones:** 5+ formularios completados/mes
- [ ] **GMB:** 5+ reseñas con promedio 4.5+ estrellas

---

## 📝 NOTAS

- **Archivo optimizado creado:** `index_seo_optimized.html`
- **Análisis completo en:** `SEO_ANALISIS_Y_RECOMENDACIONES.md`
- **Backup del original:** Hacer antes de reemplazar

---

**Última actualización:** 2 de diciembre de 2025
