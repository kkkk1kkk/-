
_PBStatistics:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    }
    return res;
}

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 14             	sub    $0x14,%esp
  14:	8b 41 04             	mov    0x4(%ecx),%eax
    int n = 0, pid, a;
    int i;
    n = 4 * string2int(argv[1]);
  17:	ff 70 04             	pushl  0x4(%eax)
  1a:	e8 41 02 00 00       	call   260 <string2int>
  1f:	8d 34 85 00 00 00 00 	lea    0x0(,%eax,4),%esi
    for(i = 0;i < n; i++){
  26:	83 c4 10             	add    $0x10,%esp
  29:	85 f6                	test   %esi,%esi
  2b:	0f 8e 7c 00 00 00    	jle    ad <main+0xad>
  31:	31 db                	xor    %ebx,%ebx
        if((pid = fork()) == 0){
  33:	e8 c2 04 00 00       	call   4fa <fork>
  38:	85 c0                	test   %eax,%eax
  3a:	89 c7                	mov    %eax,%edi
  3c:	74 74                	je     b2 <main+0xb2>
            child();
            break;
        }
        else{
            setPriority((pid % 4)+1, pid);
  3e:	89 c2                	mov    %eax,%edx
  40:	83 ec 08             	sub    $0x8,%esp
  43:	c1 fa 1f             	sar    $0x1f,%edx
  46:	50                   	push   %eax
  47:	c1 ea 1e             	shr    $0x1e,%edx
  4a:	8d 04 10             	lea    (%eax,%edx,1),%eax
  4d:	83 e0 03             	and    $0x3,%eax
  50:	29 d0                	sub    %edx,%eax
  52:	83 c0 01             	add    $0x1,%eax
  55:	50                   	push   %eax
  56:	e8 4f 05 00 00       	call   5aa <setPriority>
  5b:	83 c4 10             	add    $0x10,%esp
  5e:	31 c9                	xor    %ecx,%ecx
        result = 1;
  60:	ba 01 00 00 00       	mov    $0x1,%edx
  65:	8d 76 00             	lea    0x0(%esi),%esi
    for(i = 0;i < n; i++){
  68:	31 c0                	xor    %eax,%eax
  6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  70:	83 c0 01             	add    $0x1,%eax
                result *= -1;
  73:	f7 d2                	not    %edx
            for(j = 0;j < n;j++){
  75:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  7a:	75 f4                	jne    70 <main+0x70>
  7c:	83 c1 01             	add    $0x1,%ecx
        for(i = 0;i < n;i++){
  7f:	81 f9 e8 03 00 00    	cmp    $0x3e8,%ecx
  85:	75 e1                	jne    68 <main+0x68>
            a = calcunumber(1000);
            printf(0, "pid = %d, %d\n", pid, a);
  87:	52                   	push   %edx
  88:	57                   	push   %edi
    for(i = 0;i < n; i++){
  89:	83 c3 01             	add    $0x1,%ebx
            printf(0, "pid = %d, %d\n", pid, a);
  8c:	68 b8 09 00 00       	push   $0x9b8
  91:	6a 00                	push   $0x0
  93:	e8 c8 05 00 00       	call   660 <printf>
    for(i = 0;i < n; i++){
  98:	83 c4 10             	add    $0x10,%esp
  9b:	39 de                	cmp    %ebx,%esi
  9d:	75 94                	jne    33 <main+0x33>
        }
    }
    for(i=0; i < n; i++){
  9f:	31 f6                	xor    %esi,%esi
  a1:	83 c6 01             	add    $0x1,%esi
		waitSch();
  a4:	e8 69 04 00 00       	call   512 <waitSch>
    for(i=0; i < n; i++){
  a9:	39 f3                	cmp    %esi,%ebx
  ab:	75 f4                	jne    a1 <main+0xa1>
	}
    exit();
  ad:	e8 50 04 00 00       	call   502 <exit>
            child();
  b2:	e8 b9 00 00 00       	call   170 <child>
  b7:	66 90                	xchg   %ax,%ax
  b9:	66 90                	xchg   %ax,%ax
  bb:	66 90                	xchg   %ax,%ax
  bd:	66 90                	xchg   %ax,%ax
  bf:	90                   	nop

000000c0 <calcunumber>:
long long calcunumber(long long n){
  c0:	55                   	push   %ebp
  c1:	89 e5                	mov    %esp,%ebp
  c3:	57                   	push   %edi
  c4:	56                   	push   %esi
  c5:	53                   	push   %ebx
  c6:	83 ec 14             	sub    $0x14,%esp
  c9:	8b 45 08             	mov    0x8(%ebp),%eax
  cc:	89 45 ec             	mov    %eax,-0x14(%ebp)
  cf:	8b 45 0c             	mov    0xc(%ebp),%eax
    for(i=0;i < n;i++){
  d2:	83 f8 00             	cmp    $0x0,%eax
long long calcunumber(long long n){
  d5:	89 45 e8             	mov    %eax,-0x18(%ebp)
    for(i=0;i < n;i++){
  d8:	7e 78                	jle    152 <calcunumber+0x92>
        result = 1;
  da:	bb 01 00 00 00       	mov    $0x1,%ebx
  df:	31 c9                	xor    %ecx,%ecx
        for(i = 0;i < n;i++){
  e1:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  e8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  ef:	90                   	nop
            for(j = 0;j < n;j++){
  f0:	31 c0                	xor    %eax,%eax
  f2:	31 d2                	xor    %edx,%edx
  f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  f8:	8b 75 ec             	mov    -0x14(%ebp),%esi
  fb:	8b 7d e8             	mov    -0x18(%ebp),%edi
  fe:	83 c0 01             	add    $0x1,%eax
 101:	83 d2 00             	adc    $0x0,%edx
                result *= -1;
 104:	f7 d3                	not    %ebx
 106:	f7 d1                	not    %ecx
            for(j = 0;j < n;j++){
 108:	31 c6                	xor    %eax,%esi
 10a:	31 d7                	xor    %edx,%edi
 10c:	09 f7                	or     %esi,%edi
 10e:	75 e8                	jne    f8 <calcunumber+0x38>
        for(i = 0;i < n;i++){
 110:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 114:	83 55 e4 00          	adcl   $0x0,-0x1c(%ebp)
 118:	8b 75 e0             	mov    -0x20(%ebp),%esi
 11b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 11e:	31 c6                	xor    %eax,%esi
 120:	31 d7                	xor    %edx,%edi
 122:	09 f7                	or     %esi,%edi
 124:	75 ca                	jne    f0 <calcunumber+0x30>
    for(i=0;i < n;i++){
 126:	89 c6                	mov    %eax,%esi
 128:	89 d7                	mov    %edx,%edi
 12a:	83 c6 01             	add    $0x1,%esi
 12d:	83 d7 00             	adc    $0x0,%edi
 130:	39 d7                	cmp    %edx,%edi
 132:	7e 0c                	jle    140 <calcunumber+0x80>
}
 134:	83 c4 14             	add    $0x14,%esp
 137:	89 d8                	mov    %ebx,%eax
 139:	89 ca                	mov    %ecx,%edx
 13b:	5b                   	pop    %ebx
 13c:	5e                   	pop    %esi
 13d:	5f                   	pop    %edi
 13e:	5d                   	pop    %ebp
 13f:	c3                   	ret    
    for(i=0;i < n;i++){
 140:	7c 98                	jl     da <calcunumber+0x1a>
 142:	39 c6                	cmp    %eax,%esi
 144:	72 94                	jb     da <calcunumber+0x1a>
}
 146:	83 c4 14             	add    $0x14,%esp
 149:	89 d8                	mov    %ebx,%eax
 14b:	89 ca                	mov    %ecx,%edx
 14d:	5b                   	pop    %ebx
 14e:	5e                   	pop    %esi
 14f:	5f                   	pop    %edi
 150:	5d                   	pop    %ebp
 151:	c3                   	ret    
    for(i=0;i < n;i++){
 152:	7c 06                	jl     15a <calcunumber+0x9a>
 154:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 158:	77 80                	ja     da <calcunumber+0x1a>
}
 15a:	83 c4 14             	add    $0x14,%esp
    long long result = 0;
 15d:	31 db                	xor    %ebx,%ebx
 15f:	31 c9                	xor    %ecx,%ecx
}
 161:	89 d8                	mov    %ebx,%eax
 163:	89 ca                	mov    %ecx,%edx
 165:	5b                   	pop    %ebx
 166:	5e                   	pop    %esi
 167:	5f                   	pop    %edi
 168:	5d                   	pop    %ebp
 169:	c3                   	ret    
 16a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000170 <child>:
int child(){
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	57                   	push   %edi
 174:	56                   	push   %esi
 175:	53                   	push   %ebx
 176:	83 ec 1c             	sub    $0x1c,%esp
 179:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
		if((pid = fork()) == 0){
 180:	e8 75 03 00 00       	call   4fa <fork>
 185:	89 c1                	mov    %eax,%ecx
 187:	31 ff                	xor    %edi,%edi
 189:	89 45 d8             	mov    %eax,-0x28(%ebp)
 18c:	c1 f9 1f             	sar    $0x1f,%ecx
 18f:	89 ca                	mov    %ecx,%edx
 191:	89 4d dc             	mov    %ecx,-0x24(%ebp)
 194:	09 c2                	or     %eax,%edx
        result = 1;
 196:	b8 01 00 00 00       	mov    $0x1,%eax
 19b:	ba 00 00 00 00       	mov    $0x0,%edx
		if((pid = fork()) == 0){
 1a0:	74 69                	je     20b <child+0x9b>
 1a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        result = 1;
 1a8:	31 c9                	xor    %ecx,%ecx
 1aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
                result *= -1;
 1b0:	89 c6                	mov    %eax,%esi
 1b2:	89 d3                	mov    %edx,%ebx
 1b4:	83 c1 01             	add    $0x1,%ecx
 1b7:	f7 d6                	not    %esi
 1b9:	f7 d3                	not    %ebx
            for(j = 0;j < n;j++){
 1bb:	81 f9 88 13 00 00    	cmp    $0x1388,%ecx
                result *= -1;
 1c1:	89 f0                	mov    %esi,%eax
 1c3:	89 da                	mov    %ebx,%edx
            for(j = 0;j < n;j++){
 1c5:	75 e9                	jne    1b0 <child+0x40>
 1c7:	83 c7 01             	add    $0x1,%edi
        for(i = 0;i < n;i++){
 1ca:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
 1d0:	75 d6                	jne    1a8 <child+0x38>
            printf(0, "pid = %d, %d\n", pid, a);
 1d2:	83 ec 08             	sub    $0x8,%esp
 1d5:	53                   	push   %ebx
 1d6:	56                   	push   %esi
 1d7:	ff 75 dc             	pushl  -0x24(%ebp)
 1da:	ff 75 d8             	pushl  -0x28(%ebp)
 1dd:	68 b8 09 00 00       	push   $0x9b8
 1e2:	6a 00                	push   $0x0
 1e4:	e8 77 04 00 00       	call   660 <printf>
 1e9:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    for(i=0; i<3; i++){
 1ed:	83 c4 20             	add    $0x20,%esp
 1f0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 1f3:	83 f8 03             	cmp    $0x3,%eax
 1f6:	75 88                	jne    180 <child+0x10>
 1f8:	eb 47                	jmp    241 <child+0xd1>
 1fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 200:	83 c7 01             	add    $0x1,%edi
        for(i = 0;i < n;i++){
 203:	81 ff 98 3a 00 00    	cmp    $0x3a98,%edi
 209:	74 1e                	je     229 <child+0xb9>
int child(){
 20b:	31 c9                	xor    %ecx,%ecx
 20d:	8d 76 00             	lea    0x0(%esi),%esi
                result *= -1;
 210:	89 c6                	mov    %eax,%esi
 212:	89 d3                	mov    %edx,%ebx
 214:	83 c1 01             	add    $0x1,%ecx
 217:	f7 d6                	not    %esi
 219:	f7 d3                	not    %ebx
            for(j = 0;j < n;j++){
 21b:	81 f9 98 3a 00 00    	cmp    $0x3a98,%ecx
                result *= -1;
 221:	89 f0                	mov    %esi,%eax
 223:	89 da                	mov    %ebx,%edx
            for(j = 0;j < n;j++){
 225:	75 e9                	jne    210 <child+0xa0>
 227:	eb d7                	jmp    200 <child+0x90>
            printf(0, "pid = %d, %d\n", pid, a);
 229:	83 ec 08             	sub    $0x8,%esp
 22c:	53                   	push   %ebx
 22d:	56                   	push   %esi
 22e:	6a 00                	push   $0x0
 230:	6a 00                	push   $0x0
 232:	68 b8 09 00 00       	push   $0x9b8
 237:	6a 00                	push   $0x0
 239:	e8 22 04 00 00       	call   660 <printf>
			break;
 23e:	83 c4 20             	add    $0x20,%esp
		wait();
 241:	e8 c4 02 00 00       	call   50a <wait>
 246:	e8 bf 02 00 00       	call   50a <wait>
 24b:	e8 ba 02 00 00       	call   50a <wait>
	exit();
 250:	e8 ad 02 00 00       	call   502 <exit>
 255:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000260 <string2int>:
int string2int(char *s){
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	56                   	push   %esi
 264:	53                   	push   %ebx
 265:	8b 5d 08             	mov    0x8(%ebp),%ebx
    len = strlen(s);
 268:	83 ec 0c             	sub    $0xc,%esp
 26b:	53                   	push   %ebx
 26c:	e8 bf 00 00 00       	call   330 <strlen>
    for(i = 0;i < len;i++){
 271:	83 c4 10             	add    $0x10,%esp
 274:	85 c0                	test   %eax,%eax
 276:	7e 28                	jle    2a0 <string2int+0x40>
 278:	8d 34 03             	lea    (%ebx,%eax,1),%esi
 27b:	89 da                	mov    %ebx,%edx
    int res = 0;
 27d:	31 c0                	xor    %eax,%eax
 27f:	90                   	nop
        res = 10*res + (s[i] - 48);
 280:	0f be 0a             	movsbl (%edx),%ecx
 283:	8d 1c 80             	lea    (%eax,%eax,4),%ebx
 286:	83 c2 01             	add    $0x1,%edx
    for(i = 0;i < len;i++){
 289:	39 d6                	cmp    %edx,%esi
        res = 10*res + (s[i] - 48);
 28b:	8d 44 59 d0          	lea    -0x30(%ecx,%ebx,2),%eax
    for(i = 0;i < len;i++){
 28f:	75 ef                	jne    280 <string2int+0x20>
}
 291:	8d 65 f8             	lea    -0x8(%ebp),%esp
 294:	5b                   	pop    %ebx
 295:	5e                   	pop    %esi
 296:	5d                   	pop    %ebp
 297:	c3                   	ret    
 298:	90                   	nop
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2a0:	8d 65 f8             	lea    -0x8(%ebp),%esp
    int res = 0;
 2a3:	31 c0                	xor    %eax,%eax
}
 2a5:	5b                   	pop    %ebx
 2a6:	5e                   	pop    %esi
 2a7:	5d                   	pop    %ebp
 2a8:	c3                   	ret    
 2a9:	66 90                	xchg   %ax,%ax
 2ab:	66 90                	xchg   %ax,%ax
 2ad:	66 90                	xchg   %ax,%ax
 2af:	90                   	nop

000002b0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	53                   	push   %ebx
 2b4:	8b 45 08             	mov    0x8(%ebp),%eax
 2b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2ba:	89 c2                	mov    %eax,%edx
 2bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2c0:	83 c1 01             	add    $0x1,%ecx
 2c3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 2c7:	83 c2 01             	add    $0x1,%edx
 2ca:	84 db                	test   %bl,%bl
 2cc:	88 5a ff             	mov    %bl,-0x1(%edx)
 2cf:	75 ef                	jne    2c0 <strcpy+0x10>
    ;
  return os;
}
 2d1:	5b                   	pop    %ebx
 2d2:	5d                   	pop    %ebp
 2d3:	c3                   	ret    
 2d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000002e0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	53                   	push   %ebx
 2e4:	8b 55 08             	mov    0x8(%ebp),%edx
 2e7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2ea:	0f b6 02             	movzbl (%edx),%eax
 2ed:	0f b6 19             	movzbl (%ecx),%ebx
 2f0:	84 c0                	test   %al,%al
 2f2:	75 1c                	jne    310 <strcmp+0x30>
 2f4:	eb 2a                	jmp    320 <strcmp+0x40>
 2f6:	8d 76 00             	lea    0x0(%esi),%esi
 2f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 300:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 303:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 306:	83 c1 01             	add    $0x1,%ecx
 309:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 30c:	84 c0                	test   %al,%al
 30e:	74 10                	je     320 <strcmp+0x40>
 310:	38 d8                	cmp    %bl,%al
 312:	74 ec                	je     300 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 314:	29 d8                	sub    %ebx,%eax
}
 316:	5b                   	pop    %ebx
 317:	5d                   	pop    %ebp
 318:	c3                   	ret    
 319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 320:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 322:	29 d8                	sub    %ebx,%eax
}
 324:	5b                   	pop    %ebx
 325:	5d                   	pop    %ebp
 326:	c3                   	ret    
 327:	89 f6                	mov    %esi,%esi
 329:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000330 <strlen>:

uint
strlen(const char *s)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 336:	80 39 00             	cmpb   $0x0,(%ecx)
 339:	74 15                	je     350 <strlen+0x20>
 33b:	31 d2                	xor    %edx,%edx
 33d:	8d 76 00             	lea    0x0(%esi),%esi
 340:	83 c2 01             	add    $0x1,%edx
 343:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 347:	89 d0                	mov    %edx,%eax
 349:	75 f5                	jne    340 <strlen+0x10>
    ;
  return n;
}
 34b:	5d                   	pop    %ebp
 34c:	c3                   	ret    
 34d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 350:	31 c0                	xor    %eax,%eax
}
 352:	5d                   	pop    %ebp
 353:	c3                   	ret    
 354:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 35a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000360 <memset>:

void*
memset(void *dst, int c, uint n)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	57                   	push   %edi
 364:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 367:	8b 4d 10             	mov    0x10(%ebp),%ecx
 36a:	8b 45 0c             	mov    0xc(%ebp),%eax
 36d:	89 d7                	mov    %edx,%edi
 36f:	fc                   	cld    
 370:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 372:	89 d0                	mov    %edx,%eax
 374:	5f                   	pop    %edi
 375:	5d                   	pop    %ebp
 376:	c3                   	ret    
 377:	89 f6                	mov    %esi,%esi
 379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000380 <strchr>:

char*
strchr(const char *s, char c)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	53                   	push   %ebx
 384:	8b 45 08             	mov    0x8(%ebp),%eax
 387:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 38a:	0f b6 10             	movzbl (%eax),%edx
 38d:	84 d2                	test   %dl,%dl
 38f:	74 1d                	je     3ae <strchr+0x2e>
    if(*s == c)
 391:	38 d3                	cmp    %dl,%bl
 393:	89 d9                	mov    %ebx,%ecx
 395:	75 0d                	jne    3a4 <strchr+0x24>
 397:	eb 17                	jmp    3b0 <strchr+0x30>
 399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3a0:	38 ca                	cmp    %cl,%dl
 3a2:	74 0c                	je     3b0 <strchr+0x30>
  for(; *s; s++)
 3a4:	83 c0 01             	add    $0x1,%eax
 3a7:	0f b6 10             	movzbl (%eax),%edx
 3aa:	84 d2                	test   %dl,%dl
 3ac:	75 f2                	jne    3a0 <strchr+0x20>
      return (char*)s;
  return 0;
 3ae:	31 c0                	xor    %eax,%eax
}
 3b0:	5b                   	pop    %ebx
 3b1:	5d                   	pop    %ebp
 3b2:	c3                   	ret    
 3b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003c0 <gets>:

char*
gets(char *buf, int max)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	57                   	push   %edi
 3c4:	56                   	push   %esi
 3c5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 3c6:	31 f6                	xor    %esi,%esi
 3c8:	89 f3                	mov    %esi,%ebx
{
 3ca:	83 ec 1c             	sub    $0x1c,%esp
 3cd:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 3d0:	eb 2f                	jmp    401 <gets+0x41>
 3d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 3d8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 3db:	83 ec 04             	sub    $0x4,%esp
 3de:	6a 01                	push   $0x1
 3e0:	50                   	push   %eax
 3e1:	6a 00                	push   $0x0
 3e3:	e8 3a 01 00 00       	call   522 <read>
    if(cc < 1)
 3e8:	83 c4 10             	add    $0x10,%esp
 3eb:	85 c0                	test   %eax,%eax
 3ed:	7e 1c                	jle    40b <gets+0x4b>
      break;
    buf[i++] = c;
 3ef:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3f3:	83 c7 01             	add    $0x1,%edi
 3f6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 3f9:	3c 0a                	cmp    $0xa,%al
 3fb:	74 23                	je     420 <gets+0x60>
 3fd:	3c 0d                	cmp    $0xd,%al
 3ff:	74 1f                	je     420 <gets+0x60>
  for(i=0; i+1 < max; ){
 401:	83 c3 01             	add    $0x1,%ebx
 404:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 407:	89 fe                	mov    %edi,%esi
 409:	7c cd                	jl     3d8 <gets+0x18>
 40b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 40d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 410:	c6 03 00             	movb   $0x0,(%ebx)
}
 413:	8d 65 f4             	lea    -0xc(%ebp),%esp
 416:	5b                   	pop    %ebx
 417:	5e                   	pop    %esi
 418:	5f                   	pop    %edi
 419:	5d                   	pop    %ebp
 41a:	c3                   	ret    
 41b:	90                   	nop
 41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 420:	8b 75 08             	mov    0x8(%ebp),%esi
 423:	8b 45 08             	mov    0x8(%ebp),%eax
 426:	01 de                	add    %ebx,%esi
 428:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 42a:	c6 03 00             	movb   $0x0,(%ebx)
}
 42d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 430:	5b                   	pop    %ebx
 431:	5e                   	pop    %esi
 432:	5f                   	pop    %edi
 433:	5d                   	pop    %ebp
 434:	c3                   	ret    
 435:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000440 <stat>:

int
stat(const char *n, struct stat *st)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	56                   	push   %esi
 444:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 445:	83 ec 08             	sub    $0x8,%esp
 448:	6a 00                	push   $0x0
 44a:	ff 75 08             	pushl  0x8(%ebp)
 44d:	e8 f8 00 00 00       	call   54a <open>
  if(fd < 0)
 452:	83 c4 10             	add    $0x10,%esp
 455:	85 c0                	test   %eax,%eax
 457:	78 27                	js     480 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 459:	83 ec 08             	sub    $0x8,%esp
 45c:	ff 75 0c             	pushl  0xc(%ebp)
 45f:	89 c3                	mov    %eax,%ebx
 461:	50                   	push   %eax
 462:	e8 fb 00 00 00       	call   562 <fstat>
  close(fd);
 467:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 46a:	89 c6                	mov    %eax,%esi
  close(fd);
 46c:	e8 c1 00 00 00       	call   532 <close>
  return r;
 471:	83 c4 10             	add    $0x10,%esp
}
 474:	8d 65 f8             	lea    -0x8(%ebp),%esp
 477:	89 f0                	mov    %esi,%eax
 479:	5b                   	pop    %ebx
 47a:	5e                   	pop    %esi
 47b:	5d                   	pop    %ebp
 47c:	c3                   	ret    
 47d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 480:	be ff ff ff ff       	mov    $0xffffffff,%esi
 485:	eb ed                	jmp    474 <stat+0x34>
 487:	89 f6                	mov    %esi,%esi
 489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000490 <atoi>:

int
atoi(const char *s)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	53                   	push   %ebx
 494:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 497:	0f be 11             	movsbl (%ecx),%edx
 49a:	8d 42 d0             	lea    -0x30(%edx),%eax
 49d:	3c 09                	cmp    $0x9,%al
  n = 0;
 49f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 4a4:	77 1f                	ja     4c5 <atoi+0x35>
 4a6:	8d 76 00             	lea    0x0(%esi),%esi
 4a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 4b0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 4b3:	83 c1 01             	add    $0x1,%ecx
 4b6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 4ba:	0f be 11             	movsbl (%ecx),%edx
 4bd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 4c0:	80 fb 09             	cmp    $0x9,%bl
 4c3:	76 eb                	jbe    4b0 <atoi+0x20>
  return n;
}
 4c5:	5b                   	pop    %ebx
 4c6:	5d                   	pop    %ebp
 4c7:	c3                   	ret    
 4c8:	90                   	nop
 4c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004d0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	56                   	push   %esi
 4d4:	53                   	push   %ebx
 4d5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4d8:	8b 45 08             	mov    0x8(%ebp),%eax
 4db:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4de:	85 db                	test   %ebx,%ebx
 4e0:	7e 14                	jle    4f6 <memmove+0x26>
 4e2:	31 d2                	xor    %edx,%edx
 4e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 4e8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 4ec:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 4ef:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 4f2:	39 d3                	cmp    %edx,%ebx
 4f4:	75 f2                	jne    4e8 <memmove+0x18>
  return vdst;
}
 4f6:	5b                   	pop    %ebx
 4f7:	5e                   	pop    %esi
 4f8:	5d                   	pop    %ebp
 4f9:	c3                   	ret    

000004fa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4fa:	b8 01 00 00 00       	mov    $0x1,%eax
 4ff:	cd 40                	int    $0x40
 501:	c3                   	ret    

00000502 <exit>:
SYSCALL(exit)
 502:	b8 02 00 00 00       	mov    $0x2,%eax
 507:	cd 40                	int    $0x40
 509:	c3                   	ret    

0000050a <wait>:
SYSCALL(wait)
 50a:	b8 03 00 00 00       	mov    $0x3,%eax
 50f:	cd 40                	int    $0x40
 511:	c3                   	ret    

00000512 <waitSch>:
SYSCALL(waitSch)
 512:	b8 16 00 00 00       	mov    $0x16,%eax
 517:	cd 40                	int    $0x40
 519:	c3                   	ret    

0000051a <pipe>:
SYSCALL(pipe)
 51a:	b8 04 00 00 00       	mov    $0x4,%eax
 51f:	cd 40                	int    $0x40
 521:	c3                   	ret    

00000522 <read>:
SYSCALL(read)
 522:	b8 05 00 00 00       	mov    $0x5,%eax
 527:	cd 40                	int    $0x40
 529:	c3                   	ret    

0000052a <write>:
SYSCALL(write)
 52a:	b8 10 00 00 00       	mov    $0x10,%eax
 52f:	cd 40                	int    $0x40
 531:	c3                   	ret    

00000532 <close>:
SYSCALL(close)
 532:	b8 15 00 00 00       	mov    $0x15,%eax
 537:	cd 40                	int    $0x40
 539:	c3                   	ret    

0000053a <kill>:
SYSCALL(kill)
 53a:	b8 06 00 00 00       	mov    $0x6,%eax
 53f:	cd 40                	int    $0x40
 541:	c3                   	ret    

00000542 <exec>:
SYSCALL(exec)
 542:	b8 07 00 00 00       	mov    $0x7,%eax
 547:	cd 40                	int    $0x40
 549:	c3                   	ret    

0000054a <open>:
SYSCALL(open)
 54a:	b8 0f 00 00 00       	mov    $0xf,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    

00000552 <mknod>:
SYSCALL(mknod)
 552:	b8 11 00 00 00       	mov    $0x11,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    

0000055a <unlink>:
SYSCALL(unlink)
 55a:	b8 12 00 00 00       	mov    $0x12,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    

00000562 <fstat>:
SYSCALL(fstat)
 562:	b8 08 00 00 00       	mov    $0x8,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    

0000056a <link>:
SYSCALL(link)
 56a:	b8 13 00 00 00       	mov    $0x13,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <mkdir>:
SYSCALL(mkdir)
 572:	b8 14 00 00 00       	mov    $0x14,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <chdir>:
SYSCALL(chdir)
 57a:	b8 09 00 00 00       	mov    $0x9,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <dup>:
SYSCALL(dup)
 582:	b8 0a 00 00 00       	mov    $0xa,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <getpid>:
SYSCALL(getpid)
 58a:	b8 0b 00 00 00       	mov    $0xb,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <sbrk>:
SYSCALL(sbrk)
 592:	b8 0c 00 00 00       	mov    $0xc,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <sleep>:
SYSCALL(sleep)
 59a:	b8 0d 00 00 00       	mov    $0xd,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <uptime>:
SYSCALL(uptime)
 5a2:	b8 0e 00 00 00       	mov    $0xe,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <setPriority>:
SYSCALL(setPriority)
 5aa:	b8 17 00 00 00       	mov    $0x17,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    
 5b2:	66 90                	xchg   %ax,%ax
 5b4:	66 90                	xchg   %ax,%ax
 5b6:	66 90                	xchg   %ax,%ax
 5b8:	66 90                	xchg   %ax,%ax
 5ba:	66 90                	xchg   %ax,%ax
 5bc:	66 90                	xchg   %ax,%ax
 5be:	66 90                	xchg   %ax,%ax

000005c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	56                   	push   %esi
 5c5:	53                   	push   %ebx
 5c6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 5c9:	85 d2                	test   %edx,%edx
{
 5cb:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 5ce:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 5d0:	79 76                	jns    648 <printint+0x88>
 5d2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5d6:	74 70                	je     648 <printint+0x88>
    x = -xx;
 5d8:	f7 d8                	neg    %eax
    neg = 1;
 5da:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 5e1:	31 f6                	xor    %esi,%esi
 5e3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 5e6:	eb 0a                	jmp    5f2 <printint+0x32>
 5e8:	90                   	nop
 5e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 5f0:	89 fe                	mov    %edi,%esi
 5f2:	31 d2                	xor    %edx,%edx
 5f4:	8d 7e 01             	lea    0x1(%esi),%edi
 5f7:	f7 f1                	div    %ecx
 5f9:	0f b6 92 d0 09 00 00 	movzbl 0x9d0(%edx),%edx
  }while((x /= base) != 0);
 600:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 602:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 605:	75 e9                	jne    5f0 <printint+0x30>
  if(neg)
 607:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 60a:	85 c0                	test   %eax,%eax
 60c:	74 08                	je     616 <printint+0x56>
    buf[i++] = '-';
 60e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 613:	8d 7e 02             	lea    0x2(%esi),%edi
 616:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 61a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 61d:	8d 76 00             	lea    0x0(%esi),%esi
 620:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 623:	83 ec 04             	sub    $0x4,%esp
 626:	83 ee 01             	sub    $0x1,%esi
 629:	6a 01                	push   $0x1
 62b:	53                   	push   %ebx
 62c:	57                   	push   %edi
 62d:	88 45 d7             	mov    %al,-0x29(%ebp)
 630:	e8 f5 fe ff ff       	call   52a <write>

  while(--i >= 0)
 635:	83 c4 10             	add    $0x10,%esp
 638:	39 de                	cmp    %ebx,%esi
 63a:	75 e4                	jne    620 <printint+0x60>
    putc(fd, buf[i]);
}
 63c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 63f:	5b                   	pop    %ebx
 640:	5e                   	pop    %esi
 641:	5f                   	pop    %edi
 642:	5d                   	pop    %ebp
 643:	c3                   	ret    
 644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 648:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 64f:	eb 90                	jmp    5e1 <printint+0x21>
 651:	eb 0d                	jmp    660 <printf>
 653:	90                   	nop
 654:	90                   	nop
 655:	90                   	nop
 656:	90                   	nop
 657:	90                   	nop
 658:	90                   	nop
 659:	90                   	nop
 65a:	90                   	nop
 65b:	90                   	nop
 65c:	90                   	nop
 65d:	90                   	nop
 65e:	90                   	nop
 65f:	90                   	nop

00000660 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
 664:	56                   	push   %esi
 665:	53                   	push   %ebx
 666:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 669:	8b 75 0c             	mov    0xc(%ebp),%esi
 66c:	0f b6 1e             	movzbl (%esi),%ebx
 66f:	84 db                	test   %bl,%bl
 671:	0f 84 b3 00 00 00    	je     72a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 677:	8d 45 10             	lea    0x10(%ebp),%eax
 67a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 67d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 67f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 682:	eb 2f                	jmp    6b3 <printf+0x53>
 684:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 688:	83 f8 25             	cmp    $0x25,%eax
 68b:	0f 84 a7 00 00 00    	je     738 <printf+0xd8>
  write(fd, &c, 1);
 691:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 694:	83 ec 04             	sub    $0x4,%esp
 697:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 69a:	6a 01                	push   $0x1
 69c:	50                   	push   %eax
 69d:	ff 75 08             	pushl  0x8(%ebp)
 6a0:	e8 85 fe ff ff       	call   52a <write>
 6a5:	83 c4 10             	add    $0x10,%esp
 6a8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 6ab:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 6af:	84 db                	test   %bl,%bl
 6b1:	74 77                	je     72a <printf+0xca>
    if(state == 0){
 6b3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 6b5:	0f be cb             	movsbl %bl,%ecx
 6b8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 6bb:	74 cb                	je     688 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 6bd:	83 ff 25             	cmp    $0x25,%edi
 6c0:	75 e6                	jne    6a8 <printf+0x48>
      if(c == 'd'){
 6c2:	83 f8 64             	cmp    $0x64,%eax
 6c5:	0f 84 05 01 00 00    	je     7d0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 6cb:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 6d1:	83 f9 70             	cmp    $0x70,%ecx
 6d4:	74 72                	je     748 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 6d6:	83 f8 73             	cmp    $0x73,%eax
 6d9:	0f 84 99 00 00 00    	je     778 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 6df:	83 f8 63             	cmp    $0x63,%eax
 6e2:	0f 84 08 01 00 00    	je     7f0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 6e8:	83 f8 25             	cmp    $0x25,%eax
 6eb:	0f 84 ef 00 00 00    	je     7e0 <printf+0x180>
  write(fd, &c, 1);
 6f1:	8d 45 e7             	lea    -0x19(%ebp),%eax
 6f4:	83 ec 04             	sub    $0x4,%esp
 6f7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6fb:	6a 01                	push   $0x1
 6fd:	50                   	push   %eax
 6fe:	ff 75 08             	pushl  0x8(%ebp)
 701:	e8 24 fe ff ff       	call   52a <write>
 706:	83 c4 0c             	add    $0xc,%esp
 709:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 70c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 70f:	6a 01                	push   $0x1
 711:	50                   	push   %eax
 712:	ff 75 08             	pushl  0x8(%ebp)
 715:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 718:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 71a:	e8 0b fe ff ff       	call   52a <write>
  for(i = 0; fmt[i]; i++){
 71f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 723:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 726:	84 db                	test   %bl,%bl
 728:	75 89                	jne    6b3 <printf+0x53>
    }
  }
}
 72a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 72d:	5b                   	pop    %ebx
 72e:	5e                   	pop    %esi
 72f:	5f                   	pop    %edi
 730:	5d                   	pop    %ebp
 731:	c3                   	ret    
 732:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 738:	bf 25 00 00 00       	mov    $0x25,%edi
 73d:	e9 66 ff ff ff       	jmp    6a8 <printf+0x48>
 742:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 748:	83 ec 0c             	sub    $0xc,%esp
 74b:	b9 10 00 00 00       	mov    $0x10,%ecx
 750:	6a 00                	push   $0x0
 752:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 755:	8b 45 08             	mov    0x8(%ebp),%eax
 758:	8b 17                	mov    (%edi),%edx
 75a:	e8 61 fe ff ff       	call   5c0 <printint>
        ap++;
 75f:	89 f8                	mov    %edi,%eax
 761:	83 c4 10             	add    $0x10,%esp
      state = 0;
 764:	31 ff                	xor    %edi,%edi
        ap++;
 766:	83 c0 04             	add    $0x4,%eax
 769:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 76c:	e9 37 ff ff ff       	jmp    6a8 <printf+0x48>
 771:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 778:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 77b:	8b 08                	mov    (%eax),%ecx
        ap++;
 77d:	83 c0 04             	add    $0x4,%eax
 780:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 783:	85 c9                	test   %ecx,%ecx
 785:	0f 84 8e 00 00 00    	je     819 <printf+0x1b9>
        while(*s != 0){
 78b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 78e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 790:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 792:	84 c0                	test   %al,%al
 794:	0f 84 0e ff ff ff    	je     6a8 <printf+0x48>
 79a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 79d:	89 de                	mov    %ebx,%esi
 79f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 7a2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 7a5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7a8:	83 ec 04             	sub    $0x4,%esp
          s++;
 7ab:	83 c6 01             	add    $0x1,%esi
 7ae:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 7b1:	6a 01                	push   $0x1
 7b3:	57                   	push   %edi
 7b4:	53                   	push   %ebx
 7b5:	e8 70 fd ff ff       	call   52a <write>
        while(*s != 0){
 7ba:	0f b6 06             	movzbl (%esi),%eax
 7bd:	83 c4 10             	add    $0x10,%esp
 7c0:	84 c0                	test   %al,%al
 7c2:	75 e4                	jne    7a8 <printf+0x148>
 7c4:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 7c7:	31 ff                	xor    %edi,%edi
 7c9:	e9 da fe ff ff       	jmp    6a8 <printf+0x48>
 7ce:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 7d0:	83 ec 0c             	sub    $0xc,%esp
 7d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7d8:	6a 01                	push   $0x1
 7da:	e9 73 ff ff ff       	jmp    752 <printf+0xf2>
 7df:	90                   	nop
  write(fd, &c, 1);
 7e0:	83 ec 04             	sub    $0x4,%esp
 7e3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 7e6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 7e9:	6a 01                	push   $0x1
 7eb:	e9 21 ff ff ff       	jmp    711 <printf+0xb1>
        putc(fd, *ap);
 7f0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 7f3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7f6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 7f8:	6a 01                	push   $0x1
        ap++;
 7fa:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 7fd:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 800:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 803:	50                   	push   %eax
 804:	ff 75 08             	pushl  0x8(%ebp)
 807:	e8 1e fd ff ff       	call   52a <write>
        ap++;
 80c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 80f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 812:	31 ff                	xor    %edi,%edi
 814:	e9 8f fe ff ff       	jmp    6a8 <printf+0x48>
          s = "(null)";
 819:	bb c6 09 00 00       	mov    $0x9c6,%ebx
        while(*s != 0){
 81e:	b8 28 00 00 00       	mov    $0x28,%eax
 823:	e9 72 ff ff ff       	jmp    79a <printf+0x13a>
 828:	66 90                	xchg   %ax,%ax
 82a:	66 90                	xchg   %ax,%ax
 82c:	66 90                	xchg   %ax,%ax
 82e:	66 90                	xchg   %ax,%ax

00000830 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 830:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 831:	a1 1c 0d 00 00       	mov    0xd1c,%eax
{
 836:	89 e5                	mov    %esp,%ebp
 838:	57                   	push   %edi
 839:	56                   	push   %esi
 83a:	53                   	push   %ebx
 83b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 83e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 841:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 848:	39 c8                	cmp    %ecx,%eax
 84a:	8b 10                	mov    (%eax),%edx
 84c:	73 32                	jae    880 <free+0x50>
 84e:	39 d1                	cmp    %edx,%ecx
 850:	72 04                	jb     856 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 852:	39 d0                	cmp    %edx,%eax
 854:	72 32                	jb     888 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 856:	8b 73 fc             	mov    -0x4(%ebx),%esi
 859:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 85c:	39 fa                	cmp    %edi,%edx
 85e:	74 30                	je     890 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 860:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 863:	8b 50 04             	mov    0x4(%eax),%edx
 866:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 869:	39 f1                	cmp    %esi,%ecx
 86b:	74 3a                	je     8a7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 86d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 86f:	a3 1c 0d 00 00       	mov    %eax,0xd1c
}
 874:	5b                   	pop    %ebx
 875:	5e                   	pop    %esi
 876:	5f                   	pop    %edi
 877:	5d                   	pop    %ebp
 878:	c3                   	ret    
 879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 880:	39 d0                	cmp    %edx,%eax
 882:	72 04                	jb     888 <free+0x58>
 884:	39 d1                	cmp    %edx,%ecx
 886:	72 ce                	jb     856 <free+0x26>
{
 888:	89 d0                	mov    %edx,%eax
 88a:	eb bc                	jmp    848 <free+0x18>
 88c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 890:	03 72 04             	add    0x4(%edx),%esi
 893:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 896:	8b 10                	mov    (%eax),%edx
 898:	8b 12                	mov    (%edx),%edx
 89a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 89d:	8b 50 04             	mov    0x4(%eax),%edx
 8a0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8a3:	39 f1                	cmp    %esi,%ecx
 8a5:	75 c6                	jne    86d <free+0x3d>
    p->s.size += bp->s.size;
 8a7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 8aa:	a3 1c 0d 00 00       	mov    %eax,0xd1c
    p->s.size += bp->s.size;
 8af:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 8b2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8b5:	89 10                	mov    %edx,(%eax)
}
 8b7:	5b                   	pop    %ebx
 8b8:	5e                   	pop    %esi
 8b9:	5f                   	pop    %edi
 8ba:	5d                   	pop    %ebp
 8bb:	c3                   	ret    
 8bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8c0:	55                   	push   %ebp
 8c1:	89 e5                	mov    %esp,%ebp
 8c3:	57                   	push   %edi
 8c4:	56                   	push   %esi
 8c5:	53                   	push   %ebx
 8c6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8cc:	8b 15 1c 0d 00 00    	mov    0xd1c,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8d2:	8d 78 07             	lea    0x7(%eax),%edi
 8d5:	c1 ef 03             	shr    $0x3,%edi
 8d8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 8db:	85 d2                	test   %edx,%edx
 8dd:	0f 84 9d 00 00 00    	je     980 <malloc+0xc0>
 8e3:	8b 02                	mov    (%edx),%eax
 8e5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 8e8:	39 cf                	cmp    %ecx,%edi
 8ea:	76 6c                	jbe    958 <malloc+0x98>
 8ec:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 8f2:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8f7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 8fa:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 901:	eb 0e                	jmp    911 <malloc+0x51>
 903:	90                   	nop
 904:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 908:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 90a:	8b 48 04             	mov    0x4(%eax),%ecx
 90d:	39 f9                	cmp    %edi,%ecx
 90f:	73 47                	jae    958 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 911:	39 05 1c 0d 00 00    	cmp    %eax,0xd1c
 917:	89 c2                	mov    %eax,%edx
 919:	75 ed                	jne    908 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 91b:	83 ec 0c             	sub    $0xc,%esp
 91e:	56                   	push   %esi
 91f:	e8 6e fc ff ff       	call   592 <sbrk>
  if(p == (char*)-1)
 924:	83 c4 10             	add    $0x10,%esp
 927:	83 f8 ff             	cmp    $0xffffffff,%eax
 92a:	74 1c                	je     948 <malloc+0x88>
  hp->s.size = nu;
 92c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 92f:	83 ec 0c             	sub    $0xc,%esp
 932:	83 c0 08             	add    $0x8,%eax
 935:	50                   	push   %eax
 936:	e8 f5 fe ff ff       	call   830 <free>
  return freep;
 93b:	8b 15 1c 0d 00 00    	mov    0xd1c,%edx
      if((p = morecore(nunits)) == 0)
 941:	83 c4 10             	add    $0x10,%esp
 944:	85 d2                	test   %edx,%edx
 946:	75 c0                	jne    908 <malloc+0x48>
        return 0;
  }
}
 948:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 94b:	31 c0                	xor    %eax,%eax
}
 94d:	5b                   	pop    %ebx
 94e:	5e                   	pop    %esi
 94f:	5f                   	pop    %edi
 950:	5d                   	pop    %ebp
 951:	c3                   	ret    
 952:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 958:	39 cf                	cmp    %ecx,%edi
 95a:	74 54                	je     9b0 <malloc+0xf0>
        p->s.size -= nunits;
 95c:	29 f9                	sub    %edi,%ecx
 95e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 961:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 964:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 967:	89 15 1c 0d 00 00    	mov    %edx,0xd1c
}
 96d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 970:	83 c0 08             	add    $0x8,%eax
}
 973:	5b                   	pop    %ebx
 974:	5e                   	pop    %esi
 975:	5f                   	pop    %edi
 976:	5d                   	pop    %ebp
 977:	c3                   	ret    
 978:	90                   	nop
 979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 980:	c7 05 1c 0d 00 00 20 	movl   $0xd20,0xd1c
 987:	0d 00 00 
 98a:	c7 05 20 0d 00 00 20 	movl   $0xd20,0xd20
 991:	0d 00 00 
    base.s.size = 0;
 994:	b8 20 0d 00 00       	mov    $0xd20,%eax
 999:	c7 05 24 0d 00 00 00 	movl   $0x0,0xd24
 9a0:	00 00 00 
 9a3:	e9 44 ff ff ff       	jmp    8ec <malloc+0x2c>
 9a8:	90                   	nop
 9a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 9b0:	8b 08                	mov    (%eax),%ecx
 9b2:	89 0a                	mov    %ecx,(%edx)
 9b4:	eb b1                	jmp    967 <malloc+0xa7>
