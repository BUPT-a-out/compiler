; ModuleID = 'main'

@mod.26 = internal global i32 998244353
@d.27 = external global i32
@maxlen.36 = internal global i32 2097152
@temp.37 = external global [2097152 x i32]
@a.38 = external global [2097152 x i32]
@b.39 = external global [2097152 x i32]
@c.40 = external global [2097152 x i32]

define i32 @getarray(i32* %array)

define void @putarray(i32 %len, i32* %array)

define void @_sysy_starttime(i32 %line)

define void @_sysy_stoptime(i32 %line)

define i32 @multiply(i32 %param.a.29, i32 %param.b.30) {
multiply.entry:
  %eq.1 = icmp eq i32 %param.b.30, 0
  br i1 %eq.1, label %if.0.then, label %if.0.merge
if.0.then:
  ret i32 0
if.0.merge:
  %eq.3 = icmp eq i32 %param.b.30, 1
  br i1 %eq.3, label %if.1.then, label %if.1.merge
if.1.then:
  %rem.5 = srem i32 %param.a.29, 998244353
  ret i32 %rem.5
if.1.merge:
  %0 = lshr i32 %param.b.30, 31
  %1 = and i32 %0, 1
  %2 = add i32 %param.b.30, %1
  %3 = lshr i32 %2, 1
  %9 = call i32 @multiply(i32 %param.a.29, i32 %3)
  %add.12 = add i32 %9, %9
  %rem.13 = srem i32 %add.12, 998244353
  %4 = lshr i32 %param.b.30, 31
  %5 = and i32 %4, 1
  %6 = add i32 %param.b.30, %5
  %7 = and i32 %6, 1
  %8 = sub i32 %7, %5
  %eq.16 = icmp eq i32 %8, 1
  br i1 %eq.16, label %if.2.then, label %if.2.else
if.2.then:
  %add.19 = add i32 %rem.13, %param.a.29
  %rem.20 = srem i32 %add.19, 998244353
  ret i32 %rem.20
if.2.else:
  ret i32 %rem.13
}

define i32 @power(i32 %param.a.33, i32 %param.b.34) {
power.entry:
  %eq.23 = icmp eq i32 %param.b.34, 0
  br i1 %eq.23, label %if.3.then, label %if.3.merge
if.3.then:
  ret i32 1
if.3.merge:
  %9 = lshr i32 %param.b.34, 31
  %10 = and i32 %9, 1
  %11 = add i32 %param.b.34, %10
  %12 = lshr i32 %11, 1
  %27 = call i32 @power(i32 %param.a.33, i32 %12)
  %30 = call i32 @multiply(i32 %27, i32 %27)
  %13 = lshr i32 %param.b.34, 31
  %14 = and i32 %13, 1
  %15 = add i32 %param.b.34, %14
  %16 = and i32 %15, 1
  %17 = sub i32 %16, %14
  %eq.33 = icmp eq i32 %17, 1
  br i1 %eq.33, label %if.4.then, label %if.4.else
if.4.then:
  %36 = call i32 @multiply(i32 %30, i32 %param.a.33)
  ret i32 %36
if.4.else:
  ret i32 %30
}

define i32 @__bupt_a_out_memmove(i32* %param.dst.42, i32 %param.dst_pos.43, i32* %param.src.44, i32 %param.len.45) {
memmove.entry:
  br label %while.5.cond
while.5.cond:
  %i.46.phi.1 = phi i32 [ 0, %memmove.entry ], [ %add.49, %while.5.loop ]
  %lt.40 = icmp slt i32 %i.46.phi.1, %param.len.45
  br i1 %lt.40, label %while.5.loop, label %while.5.merge
while.5.loop:
  %add.43 = add i32 %param.dst_pos.43, %i.46.phi.1
  %44 = getelementptr i32*, i32* %param.dst.42, i32 %add.43
  %46 = getelementptr i32*, i32* %param.src.44, i32 %i.46.phi.1
  %47 = load i32, i32* %46
  store i32 %47, i32* %44
  %add.49 = add i32 %i.46.phi.1, 1
  br label %while.5.cond
while.5.merge:
  ret i32 %i.46.phi.1
}

define i32 @fft(i32* %param.arr.48, i32 %param.begin_pos.49, i32 %param.n.50, i32 %param.w.51) {
fft.entry:
  %eq.52 = icmp eq i32 %param.n.50, 1
  br i1 %eq.52, label %if.6.then, label %if.6.merge
if.6.then:
  ret i32 1
if.6.merge:
  %18 = lshr i32 %param.n.50, 31
  %19 = and i32 %18, 1
  %20 = add i32 %param.n.50, %19
  %21 = lshr i32 %20, 1
  br label %while.7.cond
while.7.cond:
  %i.52.phi.4 = phi i32 [ 0, %if.6.merge ], [ %add.79, %if.8.merge ]
  %lt.55 = icmp slt i32 %i.52.phi.4, %param.n.50
  br i1 %lt.55, label %while.7.loop, label %while.7.merge
while.7.loop:
  %22 = lshr i32 %i.52.phi.4, 31
  %23 = and i32 %22, 1
  %24 = add i32 %i.52.phi.4, %23
  %25 = and i32 %24, 1
  %26 = sub i32 %25, %23
  %eq.58 = icmp eq i32 %26, 0
  br i1 %eq.58, label %if.8.then, label %if.8.else
if.8.then:
  %27 = lshr i32 %i.52.phi.4, 31
  %28 = and i32 %27, 1
  %29 = add i32 %i.52.phi.4, %28
  %30 = lshr i32 %29, 1
  %61 = getelementptr [2097152 x i32], [2097152 x i32]* @temp.37, i32 %30
  %add.64 = add i32 %i.52.phi.4, %param.begin_pos.49
  %65 = getelementptr i32*, i32* %param.arr.48, i32 %add.64
  %66 = load i32, i32* %65
  store i32 %66, i32* %61
  br label %if.8.merge
if.8.else:
  %31 = lshr i32 %i.52.phi.4, 31
  %32 = and i32 %31, 1
  %33 = add i32 %i.52.phi.4, %32
  %34 = lshr i32 %33, 1
  %add.71 = add i32 %21, %34
  %72 = getelementptr [2097152 x i32], [2097152 x i32]* @temp.37, i32 %add.71
  %add.75 = add i32 %i.52.phi.4, %param.begin_pos.49
  %76 = getelementptr i32*, i32* %param.arr.48, i32 %add.75
  %77 = load i32, i32* %76
  store i32 %77, i32* %72
  br label %if.8.merge
if.8.merge:
  %add.79 = add i32 %i.52.phi.4, 1
  br label %while.7.cond
while.7.merge:
  br label %while.5.cond.inline1
while.5.cond.inline1:
  %i.46.phi.1 = phi i32 [ 0, %while.7.merge ], [ %add.49, %while.5.loop.inline1 ]
  %lt.40 = icmp slt i32 %i.46.phi.1, %param.n.50
  br i1 %lt.40, label %while.5.loop.inline1, label %while.5.merge.inline1
while.5.loop.inline1:
  %add.43 = add i32 %param.begin_pos.49, %i.46.phi.1
  %44 = getelementptr i32*, i32* %param.arr.48, i32 %add.43
  %46 = getelementptr i32*, [2097152 x i32]* @temp.37, i32 %i.46.phi.1
  %47 = load i32, i32* %46
  store i32 %47, i32* %44
  %add.49 = add i32 %i.46.phi.1, 1
  br label %while.5.cond.inline1
while.5.merge.inline1:
  %88 = call i32 @multiply(i32 %param.w.51, i32 %param.w.51)
  %89 = call i32 @fft(i32* %param.arr.48, i32 %param.begin_pos.49, i32 %21, i32 %88)
  %add.93 = add i32 %param.begin_pos.49, %21
  %99 = call i32 @fft(i32* %param.arr.48, i32 %add.93, i32 %21, i32 %88)
  br label %while.9.cond
while.9.cond:
  %wn.53.phi.3 = phi i32 [ 1, %while.5.merge.inline1 ], [ %143, %while.9.loop ]
  %i.52.phi.5 = phi i32 [ 0, %while.5.merge.inline1 ], [ %add.145, %while.9.loop ]
  %lt.103 = icmp slt i32 %i.52.phi.5, %21
  br i1 %lt.103, label %while.9.loop, label %while.9.merge
while.9.loop:
  %add.106 = add i32 %param.begin_pos.49, %i.52.phi.5
  %107 = getelementptr i32*, i32* %param.arr.48, i32 %add.106
  %108 = load i32, i32* %107
  %add.114 = add i32 %add.106, %21
  %115 = getelementptr i32*, i32* %param.arr.48, i32 %add.114
  %116 = load i32, i32* %115
  %124 = call i32 @multiply(i32 %wn.53.phi.3, i32 %116)
  %add.125 = add i32 %108, %124
  %rem.126 = srem i32 %add.125, 998244353
  store i32 %rem.126, i32* %107
  %sub.138 = sub i32 %108, %124
  %add.139 = add i32 %sub.138, 998244353
  %rem.140 = srem i32 %add.139, 998244353
  store i32 %rem.140, i32* %115
  %143 = call i32 @multiply(i32 %wn.53.phi.3, i32 %param.w.51)
  %add.145 = add i32 %i.52.phi.5, 1
  br label %while.9.cond
while.9.merge:
  ret i32 0
}

define i32 @main() {
main.entry:
  %146 = call i32 @getarray([2097152 x i32]* @a.38)
  %147 = call i32 @getarray([2097152 x i32]* @b.39)
  call void @_sysy_starttime(i32 60)
  store i32 1, i32* @d.27
  %add.152 = add i32 %146, %147
  %sub.153 = sub i32 %add.152, 1
  br label %while.10.cond
while.10.cond:
  %149 = load i32, i32* @d.27
  %lt.154 = icmp slt i32 %149, %sub.153
  br i1 %lt.154, label %while.10.loop, label %while.10.merge
while.10.loop:
  %155 = load i32, i32* @d.27
  %35 = shl i32 %155, 1
  store i32 %35, i32* @d.27
  br label %while.10.cond
while.10.merge:
  %157 = load i32, i32* @d.27
  %div.159 = sdiv i32 998244352, %157
  %160 = call i32 @power(i32 3, i32 %div.159)
  %161 = call i32 @fft([2097152 x i32]* @a.38, i32 0, i32 %157, i32 %160)
  %162 = load i32, i32* @d.27
  %div.164 = sdiv i32 998244352, %162
  %165 = call i32 @power(i32 3, i32 %div.164)
  %166 = call i32 @fft([2097152 x i32]* @b.39, i32 0, i32 %162, i32 %165)
  %168 = load i32, i32* @d.27
  br label %while.11.cond
while.11.cond:
  %i.59.phi.1 = phi i32 [ 0, %while.10.merge ], [ %add.180, %while.11.loop ]
  %lt.169 = icmp slt i32 %i.59.phi.1, %168
  br i1 %lt.169, label %while.11.loop, label %while.11.merge
while.11.loop:
  %171 = getelementptr [2097152 x i32], [2097152 x i32]* @a.38, i32 %i.59.phi.1
  %174 = load i32, i32* %171
  %176 = getelementptr [2097152 x i32], [2097152 x i32]* @b.39, i32 %i.59.phi.1
  %177 = load i32, i32* %176
  %178 = call i32 @multiply(i32 %174, i32 %177)
  store i32 %178, i32* %171
  %add.180 = add i32 %i.59.phi.1, 1
  br label %while.11.cond
while.11.merge:
  %181 = load i32, i32* @d.27
  %div.183 = sdiv i32 998244352, %181
  %sub.184 = sub i32 998244352, %div.183
  %185 = call i32 @power(i32 3, i32 %sub.184)
  %186 = call i32 @fft([2097152 x i32]* @a.38, i32 0, i32 %181, i32 %185)
  %188 = load i32, i32* @d.27
  %196 = call i32 @power(i32 %188, i32 998244351)
  br label %while.12.cond
while.12.cond:
  %i.59.phi.2 = phi i32 [ 0, %while.11.merge ], [ %add.199, %while.12.loop ]
  %lt.189 = icmp slt i32 %i.59.phi.2, %188
  br i1 %lt.189, label %while.12.loop, label %while.12.merge
while.12.loop:
  %191 = getelementptr [2097152 x i32], [2097152 x i32]* @a.38, i32 %i.59.phi.2
  %194 = load i32, i32* %191
  %197 = call i32 @multiply(i32 %194, i32 %196)
  store i32 %197, i32* %191
  %add.199 = add i32 %i.59.phi.2, 1
  br label %while.12.cond
while.12.merge:
  call void @_sysy_stoptime(i32 79)
  call void @putarray(i32 %sub.153, [2097152 x i32]* @a.38)
  ret i32 0
}


