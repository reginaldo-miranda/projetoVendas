CREATE TABLE notafiscal (
  idpk INTEGER  NOT NULL   IDENTITY ,
  cuf INTEGER    ,
  cnf INTEGER    ,
  natope VARCHAR(60)    ,
  modelo INTEGER    ,
  serie INTEGER    ,
  nnf INTEGER    ,
  dhemi VARCHAR(25)    ,
  dhsaient VARCHAR(25)    ,
  tpnf INTEGER    ,
  iddest INTEGER    ,
  cmunfg VARCHAR(7)    ,
  tpimp INTEGER    ,
  tpemis INTEGER    ,
  cdv INTEGER    ,
  tpamb INTEGER    ,
  finnfe INTEGER    ,
  indfinal INTEGER    ,
  indpres INTEGER    ,
  procemi INTEGER    ,
  verproc VARCHAR(20)    ,
  dhcont VARCHAR(25)    ,
  xjust VARCHAR(256)    ,
  cnpjemi VARCHAR(14)    ,
  cpfemi VARCHAR(11)    ,
  xnomeemi VARCHAR(60)    ,
  xfant VARCHAR(60)    ,
  xlgremi VARCHAR(60)    ,
  nroemi VARCHAR(60)    ,
  xcplemi VARCHAR(60)    ,
  xbairroemi VARCHAR(60)    ,
  cmunemi VARCHAR(7)    ,
  xmunemi VARCHAR(60)    ,
  ufemi CHAR(2)    ,
  cepemi VARCHAR(8)    ,
  cpaisemi VARCHAR(4)    ,
  xpaisemi VARCHAR(6)    ,
  foneemi VARCHAR(14)    ,
  ieemi VARCHAR(14)    ,
  iest VARCHAR(14)    ,
  imemi VARCHAR(15)    ,
  cnae VARCHAR(7)    ,
  crt CHAR(1)    ,
  cnpjdest VARCHAR(14)    ,
  cpfdest VARCHAR(11)    ,
  idestrangeiro VARCHAR(20)    ,
  xlgrdest VARCHAR(60)    ,
  nrodest VARCHAR(60)    ,
  xcpldest VARCHAR(60)    ,
  xbairrodest VARCHAR(60)    ,
  cmundest VARCHAR(7)    ,
  xmundest VARCHAR(60)    ,
  ufdest CHAR(2)    ,
  cepdest VARCHAR(8)    ,
  cpaisdest VARCHAR(4)    ,
  xpaisdest VARCHAR(6)    ,
  fonedest VARCHAR(14)    ,
  indiedest CHAR(1)    ,
  iedest VARCHAR(14)    ,
  isuf VARCHAR(9)    ,
  imdest VARCHAR(15)    ,
  email VARCHAR(60)    ,
  vbc DECIMAL(15,2)    ,
  vicms DECIMAL(15,2)    ,
  vbcst DECIMAL(15,2)    ,
  vst DECIMAL(15,2)    ,
  vprod DECIMAL(15,2)    ,
  vfrete DECIMAL(15,2)    ,
  vseg DECIMAL(15,2)    ,
  vdesc DECIMAL(15,2)    ,
  vii DECIMAL(15,2)    ,
  vipi DECIMAL(15,2)    ,
  vpis DECIMAL(15,2)    ,
  vcofins DECIMAL(15,2)    ,
  voutro DECIMAL(15,2)    ,
  vnf DECIMAL(15,2)    ,
  vtottrib DECIMAL(15,2)    ,
  vicmsdeson DECIMAL(15,2)    ,
  vicmsufdestopc DECIMAL(15,2)    ,
  vicmsufremet DECIMAL(15,2)    ,
  vfcpufdestopc DECIMAL(15,2)    ,
  vfcp DECIMAL(15,2)    ,
  vfcpst DECIMAL(15,2)    ,
  vfcpstret DECIMAL(15,2)    ,
  vipidevol DECIMAL(15,2)    ,
  modfrete CHAR(1)    ,
  cnpjtransp VARCHAR(14)    ,
  cpftransp VARCHAR(11)    ,
  xnometransp VARCHAR(60)    ,
  ietransp VARCHAR(14)    ,
  xender VARCHAR(60)    ,
  xmuntransp VARCHAR(60)    ,
  uftransp CHAR(2)    ,
  placa VARCHAR(8)    ,
  ufveic CHAR(2)    ,
  rntc VARCHAR(20)    ,
  qvol DECIMAL(15)    ,
  esp VARCHAR(60)    ,
  pesol DECIMAL(12,3)    ,
  pesob DECIMAL(12,3)    ,
  infadfisco nvarchar(MAX)    ,
  infcpl nvarchar(MAX)    ,
  nfat VARCHAR(60)    ,
  vorig DECIMAL(15,2)    ,
  vdescfatura DECIMAL(15,2)    ,
  vliq DECIMAL(15,2)    ,
  versao VARCHAR(4)    ,
  chavenf VARCHAR(44)    ,
  statusnfe CHAR(1)      ,
PRIMARY KEY(idpk));
GO




CREATE TABLE origem (
  idpk INTEGER  NOT NULL   IDENTITY ,
  origem INTEGER  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));
GO




CREATE TABLE formapagto (
  idpk INTEGER  NOT NULL   IDENTITY ,
  codigo CHAR(2)    ,
  descricao VARCHAR(100)      ,
PRIMARY KEY(idpk));
GO





CREATE TABLE ncmibpt (
  idpk INTEGER  NOT NULL   IDENTITY ,
  ncm VARCHAR(9)  NOT NULL  ,
  descricao VARCHAR(255)    ,
  extipi INTEGER    ,
  aliquotanacional DECIMAL(5,2)    ,
  aliquotaimportacao DECIMAL(5,2)    ,
  aliquotaestadual DECIMAL(5,2)    ,
  aliquotamunicipal DECIMAL(5,2)    ,
  uf CHAR(2)    ,
  iniciovigencia DATE    ,
  fimvigencia DATE    ,
  chave VARCHAR(100)    ,
  versao VARCHAR(100)      ,
PRIMARY KEY(idpk));
GO




CREATE TABLE Portaria (
  idpk INTEGER  NOT NULL   IDENTITY ,
  titulo VARCHAR(100)  NOT NULL  ,
  descritivo nvarchar(MAX)  NOT NULL    ,
PRIMARY KEY(idpk));
GO




CREATE TABLE unidademedida (
  idpk INTEGER  NOT NULL   IDENTITY ,
  sigla CHAR(2)  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));
GO




CREATE TABLE usuario (
  idpk INTEGER  NOT NULL   IDENTITY ,
  Nome VARCHAR(100)  NOT NULL  ,
  login VARCHAR(100)  NOT NULL  ,
  senha VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));
GO




CREATE TABLE transportadora (
  idpk INTEGER  NOT NULL   IDENTITY ,
  cnpjcpf VARCHAR(14)    ,
  razaosocial VARCHAR(60)    ,
  ie VARCHAR(14)    ,
  logradouro VARCHAR(60)    ,
  cidade VARCHAR(60)    ,
  uf CHAR(2)      ,
PRIMARY KEY(idpk));
GO




CREATE TABLE uficms (
  idpk INTEGER  NOT NULL   IDENTITY ,
  sigla CHAR(2)    ,
  aliquotainter DECIMAL(5,2)    ,
  aliquotaintra DECIMAL(5,2)    ,
  aliquotafcp DECIMAL(5,2)      ,
PRIMARY KEY(idpk));
GO




CREATE TABLE destinatario (
  idpk INTEGER  NOT NULL  ,
  cnpjcpf VARCHAR(14)    ,
  docestrangeiro VARCHAR(20)    ,
  razaosocial VARCHAR(60)    ,
  nomefantasia VARCHAR(60)    ,
  numero VARCHAR(60)    ,
  logradouro VARCHAR(60)  NOT NULL  ,
  complemento VARCHAR(60)    ,
  bairro VARCHAR(60)    ,
  ibge VARCHAR(7)    ,
  cidade VARCHAR(60)    ,
  uf CHAR(2)    ,
  cep VARCHAR(8)    ,
  fone VARCHAR(14)    ,
  tipocontribuinte INTEGER    ,
  IE VARCHAR(14)    ,
  IM VARCHAR(15)    ,
  email VARCHAR(60)    ,
  consumidorfinal INTEGER      ,
PRIMARY KEY(idpk));
GO








CREATE TABLE cstcofins (
  idpk INTEGER  NOT NULL   IDENTITY ,
  cst CHAR(2)  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL  ,
  tipo INTEGER      ,
PRIMARY KEY(idpk));
GO





CREATE TABLE csticms (
  idpk INTEGER  NOT NULL   IDENTITY ,
  cstcsosn CHAR(3)  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));
GO




CREATE TABLE cstipi (
  idpk INTEGER  NOT NULL   IDENTITY ,
  cst CHAR(2)  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL  ,
  tipo INTEGER      ,
PRIMARY KEY(idpk));
GO





CREATE TABLE cfop (
  idpk INTEGER  NOT NULL   IDENTITY ,
  cfop INTEGER  NOT NULL  ,
  descricao VARCHAR(255)  NOT NULL  ,
  obs nvarchar(MAX)    ,
  tipo INTEGER      ,
PRIMARY KEY(idpk));
GO





CREATE TABLE configuracao (
  idpk INTEGER  NOT NULL   IDENTITY ,
  tipoemissao VARCHAR(100)  NOT NULL  ,
  seriecertificado VARCHAR(100)  NOT NULL  ,
  ambiente INTEGER  NOT NULL  ,
  formaemissao INTEGER    ,
  modelo INTEGER  NOT NULL  ,
  serie CHAR(3)  NOT NULL  ,
  ultimanfe INTEGER  NOT NULL    ,
PRIMARY KEY(idpk));
GO




CREATE TABLE crt (
  idpk INTEGER  NOT NULL   IDENTITY ,
  crt INTEGER  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));
GO





CREATE TABLE cstpis (
  idpk INTEGER  NOT NULL   IDENTITY ,
  cst CHAR(2)  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL  ,
  tipo INTEGER      ,
PRIMARY KEY(idpk));
GO





CREATE TABLE emitente (
  idpk INTEGER  NOT NULL   IDENTITY ,
  crt_idpk INTEGER  NOT NULL  ,
  cnpjcpf VARCHAR(14)    ,
  razaosocial VARCHAR(60)    ,
  nomefantasia VARCHAR(60)    ,
  logradouro VARCHAR(60)    ,
  numero VARCHAR(60)    ,
  complemento VARCHAR(60)    ,
  bairro VARCHAR(60)    ,
  ibge VARCHAR(7)    ,
  cidade VARCHAR(60)    ,
  uf CHAR(2)    ,
  cep VARCHAR(8)    ,
  fone VARCHAR(14)    ,
  ie VARCHAR(14)    ,
  im VARCHAR(15)    ,
  cnae VARCHAR(7)    ,
  cnpjcpfcontador VARCHAR(14)    ,
  regimepiscofins INTEGER    ,
  piscofinsmonofasico bit    ,
  aliquotapis DECIMAL(5,2)    ,
  aliqiuotacofins DECIMAL(5,2)    ,
  creditosn DECIMAL(5,2)      ,
PRIMARY KEY(idpk, crt_idpk)  ,
  FOREIGN KEY(crt_idpk)
    REFERENCES crt(idpk));
GO


CREATE INDEX emitente_FKIndex1 ON emitente (crt_idpk);
GO


CREATE TABLE duplicatanotafiscal (
  idpk INTEGER  NOT NULL   IDENTITY ,
  notafiscal_idpk INTEGER  NOT NULL  ,
  ndup VARCHAR(60)    ,
  dvenc DATE    ,
  vdup DECIMAL(15,2)      ,
PRIMARY KEY(idpk)  ,
  FOREIGN KEY(notafiscal_idpk)
    REFERENCES notafiscal(idpk));
GO


CREATE INDEX duplicatanotafiscal_FKIndex1 ON duplicatanotafiscal (notafiscal_idpk);
GO



CREATE TABLE autorizadosnotafiscal (
  idpk INTEGER  NOT NULL   IDENTITY ,
  notafiscal_idpk INTEGER  NOT NULL  ,
  cnpj VARCHAR(14)    ,
  cpf VARCHAR(11)      ,
PRIMARY KEY(idpk)  ,
  FOREIGN KEY(notafiscal_idpk)
    REFERENCES notafiscal(idpk));
GO


CREATE INDEX autorizadosnotafiscal_FKIndex1 ON autorizadosnotafiscal (notafiscal_idpk);
GO




CREATE TABLE autorizado (
  idpk INTEGER  NOT NULL   IDENTITY ,
  destinatario_idpk INTEGER  NOT NULL  ,
  cnpjcpf VARCHAR(14)      ,
PRIMARY KEY(idpk, destinatario_idpk)  ,
  FOREIGN KEY(destinatario_idpk)
    REFERENCES destinatario(idpk));
GO


CREATE INDEX autorizados_FKIndex1 ON autorizado (destinatario_idpk);
GO



CREATE TABLE veiculo (
  idpk INTEGER  NOT NULL   IDENTITY ,
  transportadora_idpk INTEGER  NOT NULL  ,
  placa VARCHAR(8)    ,
  uf CHAR(2)    ,
  rntc VARCHAR(20)      ,
PRIMARY KEY(idpk)  ,
  FOREIGN KEY(transportadora_idpk)
    REFERENCES transportadora(idpk));
GO


CREATE INDEX veiculos_FKIndex1 ON veiculo (transportadora_idpk);
GO



CREATE TABLE itensnotafiscal (
  idpk INTEGER  NOT NULL   IDENTITY ,
  notafiscal_idpk INTEGER  NOT NULL  ,
  cprod VARCHAR(60)    ,
  cean VARCHAR(14)    ,
  xprod VARCHAR(120)    ,
  ncm VARCHAR(8)    ,
  cestopc VARCHAR(7)    ,
  indescalaopc CHAR(1)    ,
  cnpjfabopc VARCHAR(14)    ,
  cbenfopc VARCHAR(10)    ,
  extipi CHAR(3)    ,
  cfop INTEGER    ,
  ucom VARCHAR(6)    ,
  qcom DECIMAL(15,4)    ,
  vuncom DECIMAL(21,10)    ,
  vprod DECIMAL(15,2)    ,
  ceantrib VARCHAR(14)    ,
  utrib VARCHAR(6)    ,
  vuntrib DECIMAL(21,10)    ,
  vfrete DECIMAL(15,2)    ,
  vseg DECIMAL(15,2)    ,
  vdesc DECIMAL(15,2)    ,
  voutro DECIMAL(15,2)    ,
  indtot INTEGER    ,
  orig CHAR(1)    ,
  csticms CHAR(3)    ,
  modbc INTEGER    ,
  predbc DECIMAL(5,2)    ,
  vbcicms DECIMAL(15,2)    ,
  picms DECIMAL(5,2)    ,
  vicms DECIMAL(15,2)    ,
  modbcst INTEGER    ,
  pmvast DECIMAL(5,2)    ,
  predbcst DECIMAL(5,2)    ,
  vbcst DECIMAL(15,2)    ,
  picmsst DECIMAL(5,2)    ,
  vicmsst DECIMAL(15,2)    ,
  vbcstret DECIMAL(15,2)    ,
  vicmsstret DECIMAL(15,2)    ,
  vbcstdest DECIMAL(15,2)    ,
  vicmsstdest DECIMAL(15,2)    ,
  motdesicms INTEGER    ,
  pbcop DECIMAL(5,2)    ,
  ufst CHAR(2)    ,
  pcredsn DECIMAL(5,2)    ,
  vcredicmssn DECIMAL(15,2)    ,
  vicmsdeson DECIMAL(15,2)    ,
  vicmsop DECIMAL(15,2)    ,
  pdif DECIMAL(5,2)    ,
  vicmsdif DECIMAL(15,2)    ,
  vbcfcp DECIMAL(15,2)    ,
  pfcp DECIMAL(5,2)    ,
  vfcp DECIMAL(15,2)    ,
  vbcfcpst DECIMAL(15,2)    ,
  pfcpst DECIMAL(5,2)    ,
  vfcpst DECIMAL(15,2)    ,
  vbcfcpstret DECIMAL(15,2)    ,
  pfcpstret DECIMAL(5,2)    ,
  vfcpstret DECIMAL(15,2)    ,
  pst DECIMAL(5,2)    ,
  cselo VARCHAR(60)    ,
  qselo INTEGER    ,
  cenq CHAR(3)    ,
  cstipi CHAR(2)    ,
  vbcipi DECIMAL(15,2)    ,
  pipi DECIMAL(5,2)    ,
  vipi DECIMAL(15,2)    ,
  qunid DECIMAL(15,4)    ,
  vunid DECIMAL(15,4)    ,
  cstpis CHAR(2)    ,
  vbcpis DECIMAL(15,2)    ,
  ppis DECIMAL(5,2)    ,
  vpis DECIMAL(15,2)    ,
  qbcprodpis DECIMAL(16,4)    ,
  valiqprodpis DECIMAL(16,4)    ,
  cstcofins CHAR(2)    ,
  vbccofins DECIMAL(15,2)    ,
  pcofins DECIMAL(5,2)    ,
  vcofins DECIMAL(15,2)    ,
  qbcprodcofins DECIMAL(16,4)    ,
  valiqprodcofins DECIMAL(15,4)    ,
  vbcufdest DECIMAL(15,2)    ,
  vbcfcpufdestopc DECIMAL(15,2)    ,
  pfcpufdest DECIMAL(5,2)    ,
  picmsufdest DECIMAL(5,2)    ,
  picmsinter DECIMAL(5,2)    ,
  picmsinterpart DECIMAL(5,2)    ,
  vfcpufdest DECIMAL(15,2)    ,
  vicmsufdest DECIMAL(15,2)    ,
  vicmsufremet DECIMAL(15,2)      ,
PRIMARY KEY(idpk)  ,
  FOREIGN KEY(notafiscal_idpk)
    REFERENCES notafiscal(idpk));
GO


CREATE INDEX itensnotafiscal_FKIndex1 ON itensnotafiscal (notafiscal_idpk);
GO


CREATE TABLE integracaofiscal (
  idpk INTEGER  NOT NULL   IDENTITY ,
  cstipi_idpk INTEGER  NOT NULL  ,
  cstcofins_idpk INTEGER  NOT NULL  ,
  cstpis_idpk INTEGER  NOT NULL  ,
  csticms_idpk INTEGER  NOT NULL  ,
  cfop_idpk INTEGER  NOT NULL  ,
  descricao VARCHAR(100)    ,
  icmsipi INTEGER    ,
  aliquotaespecificaicms DECIMAL(5,2)    ,
  aliquotaespecificaicmsst DECIMAL(5,2)    ,
  aliquotareducaobaseicms DECIMAL(5,2)    ,
  aliquotareducaobasest DECIMAL(5,2)      ,
PRIMARY KEY(idpk)          ,
  FOREIGN KEY(csticms_idpk)
    REFERENCES csticms(idpk),
  FOREIGN KEY(cstpis_idpk)
    REFERENCES cstpis(idpk),
  FOREIGN KEY(cstcofins_idpk)
    REFERENCES cstcofins(idpk),
  FOREIGN KEY(cfop_idpk)
    REFERENCES cfop(idpk),
  FOREIGN KEY(cstipi_idpk)
    REFERENCES cstipi(idpk));
GO


CREATE INDEX integracaofiscal_FKIndex2 ON integracaofiscal (csticms_idpk);
GO
CREATE INDEX integracaofiscal_FKIndex3 ON integracaofiscal (cstpis_idpk);
GO
CREATE INDEX integracaofiscal_FKIndex4 ON integracaofiscal (cstcofins_idpk);
GO
CREATE INDEX integracaofiscal_FKIndex5 ON integracaofiscal (cfop_idpk);
GO
CREATE INDEX integracaofiscal_FKIndex6 ON integracaofiscal (cstipi_idpk);
GO



CREATE TABLE itemrastro (
  idpk INTEGER  NOT NULL   IDENTITY ,
  itensnotafiscal_idpk INTEGER  NOT NULL  ,
  nlote VARCHAR(20)    ,
  qlote DECIMAL(11,3)    ,
  dfab DATE    ,
  dval DATE    ,
  cagregopc VARCHAR(20)      ,
PRIMARY KEY(idpk)  ,
  FOREIGN KEY(itensnotafiscal_idpk)
    REFERENCES itensnotafiscal(idpk));
GO


CREATE INDEX itemrastro_FKIndex1 ON itemrastro (itensnotafiscal_idpk);
GO



CREATE TABLE produto (
  idpk INTEGER  NOT NULL   IDENTITY ,
  integracaofiscal_idpk INTEGER  NOT NULL  ,
  origem_idpk INTEGER  NOT NULL  ,
  ncmibpt_idpk INTEGER  NOT NULL  ,
  unidademedida_idpk INTEGER  NOT NULL  ,
  codigo VARCHAR(60)    ,
  gtin VARCHAR(14)    ,
  descricao VARCHAR(120)    ,
  cest VARCHAR(7)    ,
  indescala INTEGER    ,
  cnpjfabricante VARCHAR(14)    ,
  codigobeneficio VARCHAR(10)    ,
  preco DECIMAL(15,2)    ,
  mva DECIMAL(5,2)    ,
  aliquotapis DECIMAL(5,2)    ,
  aliquotacofins DECIMAL(5,2)    ,
  aliquotaipi DECIMAL(5,2)      ,
PRIMARY KEY(idpk)        ,
  FOREIGN KEY(unidademedida_idpk)
    REFERENCES unidademedida(idpk),
  FOREIGN KEY(integracaofiscal_idpk)
    REFERENCES integracaofiscal(idpk),
  FOREIGN KEY(origem_idpk)
    REFERENCES origem(idpk),
  FOREIGN KEY(ncmibpt_idpk)
    REFERENCES ncmibpt(idpk));
GO


CREATE INDEX produtos_FKIndex1 ON produto (unidademedida_idpk);
GO
CREATE INDEX produtos_FKIndex2 ON produto (integracaofiscal_idpk);
GO
CREATE INDEX produtos_FKIndex3 ON produto (origem_idpk);
GO
CREATE INDEX produtos_FKIndex4 ON produto (ncmibpt_idpk);
GO





