;; --------------------------------------------------
;; -- Laboratorio de Circuitos Logicos - Turma A   --
;; --------------------------------------------------
;; -- 135964 Guilherme Kairalla Kolotelo           --
;; -- 137943 Alexandre Seidy Ioshisaqui            --
;; --------------------------------------------------
;; -- Laboratorio 10: Projeto: Processador simples --
;; --------------------------------------------------

;; Binary instruction format
;; (oooo xxx yyy ffffff)
;; oooo: opcode
;; xxx: register X (rx)
;; yyy: register Y (ry)
;; ffffff: offset (6-bit)
;; (immediates accept: 0x, 0b or 0d)

;; Native instructions
;; mv   rx, ry 
;; mvi  rx, #D 
;; add  rx, ry
;; sub  rx, ry
;; ld   rx, [ry]
;; st   rx, [ry] 
;; mvnz rx, ry
;; and  rx, ry
;; or   rx, ry
;; ls   rx
;; rs   rx
;; rotl rx
;; rotr rx

;; Pseudo-instructions (macros)
;; jmp rx
;;      mv pc, rx
;; bne rx, ry, rb
;;      sub rx, ry
;;      mvnz rb
;; ?load immediate
;; ?jump immediate

;; Mnemonics
;; PC is equivalent to R7