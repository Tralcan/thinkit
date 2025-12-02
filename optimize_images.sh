#!/bin/bash

# Script para optimizar imágenes a WebP
# Autor: ThinkIT SEO Optimization
# Fecha: 2025-12-02 (Actualizado)

echo "======================================"
echo "  Optimización de Imágenes a WebP"
echo "======================================"
echo ""

# Verificar si cwebp está instalado (alternativa a sharp)
if ! command -v cwebp &> /dev/null; then
    echo "⚠️  cwebp no está instalado."
    echo "📦 Instalando con Homebrew..."
    
    if command -v brew &> /dev/null; then
        brew install webp
    else
        echo "❌ Homebrew no está instalado."
        echo "Por favor instala Homebrew desde: https://brew.sh"
        echo "O instala webp manualmente: brew install webp"
        exit 1
    fi
    
    if [ $? -ne 0 ]; then
        echo "❌ Error instalando webp"
        exit 1
    fi
    echo "✅ webp instalado correctamente"
    echo ""
fi

# Crear directorio de respaldo
BACKUP_DIR="imagenes_backup_$(date +%Y%m%d_%H%M%S)"
echo "📁 Creando backup en: $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

# Función para optimizar imagen
optimize_image() {
    local input_file="$1"
    local output_file="${input_file%.*}.webp"
    local backup_file="$BACKUP_DIR/$(basename "$input_file")"
    
    echo "🔄 Procesando: $input_file"
    
    # Hacer backup
    cp "$input_file" "$backup_file"
    
    # Convertir a WebP con calidad 85
    cwebp -q 85 "$input_file" -o "$output_file" 2>/dev/null
    
    if [ $? -eq 0 ]; then
        # Obtener tamaños
        original_size=$(stat -f%z "$input_file" 2>/dev/null || stat -c%s "$input_file" 2>/dev/null)
        webp_size=$(stat -f%z "$output_file" 2>/dev/null || stat -c%s "$output_file" 2>/dev/null)
        
        # Calcular reducción
        if [ "$original_size" -gt 0 ]; then
            reduction=$(echo "scale=1; ($original_size - $webp_size) * 100 / $original_size" | bc 2>/dev/null || echo "N/A")
        else
            reduction="N/A"
        fi
        
        # Formatear tamaños
        original_kb=$(echo "scale=1; $original_size / 1024" | bc)
        webp_kb=$(echo "scale=1; $webp_size / 1024" | bc)
        
        echo "   ✅ Original: ${original_kb}KB"
        echo "   ✅ WebP: ${webp_kb}KB"
        echo "   ✅ Reducción: ${reduction}%"
        echo ""
    else
        echo "   ❌ Error procesando $input_file"
        echo ""
    fi
}

# Optimizar logo principal
if [ -f "logo.png" ]; then
    echo "🖼️  Optimizando logo principal..."
    optimize_image "logo.png"
fi

# Optimizar logoacu.png si existe
if [ -f "logoacu.png" ]; then
    echo "🖼️  Optimizando logoacu..."
    optimize_image "logoacu.png"
fi

# Optimizar logos de clientes
if [ -d "clientes" ]; then
    echo "🖼️  Optimizando logos de clientes..."
    for file in clientes/*.png; do
        if [ -f "$file" ]; then
            optimize_image "$file"
        fi
    done
fi

# Resumen
echo "======================================"
echo "✅ Optimización completada"
echo "======================================"
echo ""
echo "📊 Resumen:"
echo "   - Backup guardado en: $BACKUP_DIR"
echo "   - Archivos WebP creados"
echo ""
echo "🔧 Próximo paso:"
echo "   Actualiza tu HTML para usar las imágenes WebP"
echo "   Ejemplo:"
echo '   <picture>'
echo '     <source srcset="logo.webp" type="image/webp">'
echo '     <img src="logo.png" alt="Logo">'
echo '   </picture>'
echo ""
echo "📁 Archivos generados:"
ls -lh *.webp 2>/dev/null
ls -lh clientes/*.webp 2>/dev/null
echo ""
