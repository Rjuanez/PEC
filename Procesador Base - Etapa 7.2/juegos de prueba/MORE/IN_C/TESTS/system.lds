/*
 *  Canviem l'script per defecte
 *   per adequar-lo a l'arquitectura
 */
OUTPUT_FORMAT("elf32-sisa","elf32-sisa","elf32-sisa")
OUTPUT_ARCH(sisa)
SECTIONS
{
  /* Ens situem a la part de flash */
  . = 0xc000 ;

  /* text space */
  .sistema :
  {
    entrada.o(.text) lib_sisa.o(.text) Test1.o(.text)
    entrada.o(.rodata) lib_sisa.o(.rodata) Test1.o(.rodata)
    . = ALIGN(2);
  }
  __entry_point = LOADADDR(.sistema);

  PROVIDE (__user_start = .);
  . = 0x0 ; /* Part d'usuari */

  .user :
  {
  }
  __user_end = __user_start + SIZEOF(.user);
  
   /* Ens situem en la part de sistema */
  . = 0x8000 ;

  .sysdata : { entrada.o(.data) lib_sisa.o(.data) Test1.o(.data) }
}
