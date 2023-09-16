`timescale 1ns / 1ps

module subbytes(
input  [127:0] data,
output [127:0] sb
);

     sbox x0 (.a(data[127:120]),.c(sb[127:120]));
     sbox x1 (.a(data[119:112]),.c(sb[119:112]));
     sbox x2 (.a(data[111:104]),.c(sb[111:104]));
     sbox x3 (.a(data[103:96] ),.c(sb[103:96]) );
     
     sbox x4 (.a(data[95:88]  ),.c(sb[95:88])  );
     sbox x5 (.a(data[87:80]  ),.c(sb[87:80])  );
     sbox x6 (.a(data[79:72]  ),.c(sb[79:72])  );
     sbox x7 (.a(data[71:64]  ),.c(sb[71:64])  );
     
     sbox x8 (.a(data[63:56]  ),.c(sb[63:56])  );
     sbox x9 (.a(data[55:48]  ),.c(sb[55:48])  );
     sbox x10(.a(data[47:40]  ),.c(sb[47:40])  );
     sbox x11(.a(data[39:32]  ),.c(sb[39:32])  );
     
     sbox x12(.a(data[31:24]  ),.c(sb[31:24])  );
     sbox x13(.a(data[23:16]  ),.c(sb[23:16])  );
     sbox x14(.a(data[15:8]   ),.c(sb[15:8])   );
     sbox x16(.a(data[7:0]    ),.c(sb[7:0])    );
	  
endmodule
