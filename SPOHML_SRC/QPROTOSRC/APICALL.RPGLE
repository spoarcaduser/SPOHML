      *%CSTD===========================================================*
      ** Application. : SPOHML     Arcad Demo for Skipper-Git          *
      ** Component. . : APICALL                       Type: RPGLE      *
      **===============================================================*
      ** Sub-system . :                                                *
      ** Function . . :                                                *
      ** Sub-function :                                                *
      **%S=============================================================*
      ** Description of functions:                                     *
      **          xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                *
      **          xxxxxxxxxxxxxxxxxxxxxxxxxxx              *           *
      **                                                               *
      **%E=============================================================*
      ** AUTHOR:                          00:00                        *
      ** MODIFS: 01 ARCAD_PGMR 04/14/2020 14:56  01.00.01    00/       *
      *%ECSTD==========================================================*
       // changed by ARCAD_PGMR
     d crtusrspc       pr                  extpgm('QUSCRTUS')
     D  usrspc                       20
     D spc_attr                      10    const
     D spc_size                      10i 0 const
     D spc_init                       1    const
     D spc_aut                       10    const
     D spc_text                      50    const
     D spc_replace                   10    const
     D  errcod                      256

     d rtvusrspcptr    pr                  extpgm('QUSPTRUS')
     D  usrspc                       20    const
     d  ptr                            *

      /if not defined(exec)
     D exec            pr                  extpgm('QCMDEXC')
     D                             3000A   options(*varsize) const
     D                               15P 5 const
     D                                3A   const options(*nopass)
      /define exec
      /endif
      /if not defined(errcod)
     d errcod          ds
     d  byte_provided                10i 0 inz(%len(errcod))
     d  byte_availabl                10i 0
     d  error_msgid                   7
     d                                1
     d  message_data                240

      /define errcod
      /endif
