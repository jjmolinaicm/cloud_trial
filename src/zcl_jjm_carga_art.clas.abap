CLASS zcl_jjm_carga_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_jjm_carga_art IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA it_art TYPE STANDARD TABLE OF zjjm_tab_art.

    it_art = VALUE #( ( client = sy-mandt
                        id_art = 1
                        descr  = 'Libro 1'
                        descr2 = 'Victoria'
                        color  = 'varios'
                        piezas = 12
                        stock  = 10
                        url    = 'https://imagessl3.casadellibro.com/a/l/s5/53/9788408295853.webp' )

                      ( client = sy-mandt
                        id_art = 2
                        descr  = 'Libro 2'
                        descr2 = 'LAS QUE NO DUERMEN NASH'
                        color  = 'negro'
                        piezas = 1
                        stock  = 100
                        url    = 'https://imagessl4.casadellibro.com/a/l/s5/84/9788423366484.webp' )

                     ( client = sy-mandt
                        id_art = 3
                        descr  = 'Libro 3'
                        descr2 = 'HASTA QUE CAIGA LA LUNA '
                        color  = 'blanco'
                        piezas = 3
                        stock  = 34
                        url    = 'https://imagessl3.casadellibro.com/a/l/s5/23/9788401035623.webp' )

                      ( client = sy-mandt
                        id_art = 4
                        descr  = 'Libro 4'
                        descr2 = 'LA ISLA DE LA MUJER DORMIDA'
                        color  = 'verde'
                        piezas = 45
                        stock  = 22
                        url    = 'https://imagessl4.casadellibro.com/a/l/s5/34/9788410299634.webpp' )
                    ).

    INSERT zjjm_tab_art FROM TABLE @it_art.
*    delete FROM zjjm_tab_art.
    IF sy-subrc = 0.
      out->write( 'Insert correcto' ).
    ELSE.
      out->write( 'Insert incorrecto' ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
