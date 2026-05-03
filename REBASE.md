# Limpieza de historial Git

## Pasos realizados

1. **Creación de commits de prueba**  
   Se añadieron cambios temporales en `temp.txt` y se crearon 4 commits con mensajes poco claros

2. **Rebase**  
   Se ejecutó `git rebase -i HEAD~4` para reescribir los últimos 4 commits.  
   - Se usó `reword` para mejorar el primer mensaje.  
   - Se usó `squash` para fusionar los tres siguientes dentro del primero.  
   - Resultado: 1 commit claro, bug fixes sobre la pasarela de pago en V1.2.

3. **Publicación remota**  
   - Se forzó el push con `git push --force-with-lease origin main` para actualizar el repositorio en GitHub.
