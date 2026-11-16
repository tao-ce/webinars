use Cwd;
use File::Basename;

ensure_path( 'TEXINPUTS', '../../common' );

$docbasename = basename(getcwd());

$out_dir = '../../output/';
$aux_dir = '.cache/build';
$jobname = $docbasename.'_%A';

$pdf_mode = 5;
$xelatex = 'xelatex -interaction=nonstopmode %O %S';

@default_files = (
    'presentation',
    'handout',
);
