CategoryNames:
	dw .Physical
	dw .Special
	dw .Status

.Physical: db "PHYSICAL@"
.Special:  db "SPECIAL@"
.Status:   db "STATUS@"

CategoryNames2:
	dw .Physical2
	dw .Special2
	dw .Status2

.Physical2: db "PHYS@"
.Special2:  db "SPEC@"
.Status2:   db " --@"