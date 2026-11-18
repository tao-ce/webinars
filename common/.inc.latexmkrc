use Cwd;
use File::Basename;

$main_memory=12000000;

$commonpath = dirname(abs_path(__FILE__));
$rootpath = dirname($commonpath);
$docbasename = basename(getcwd());

ensure_path( 'TEXINPUTS', $commonpath );

$out_dir = $rootpath.'/output';
$aux_dir = '.cache/build';
$jobname = $docbasename.'_%A';

#$pdf_mode = 5;
#$xelatex = 'xelatex -interaction=nonstopmode %O %S';
$pdf_mode = 4;
$lualatex = 'lualatex -interaction=nonstopmode %O %S';
