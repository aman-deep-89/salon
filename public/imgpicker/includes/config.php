<?php
$config = array(
	// Upload path
	'upload_dir' => '../../uploads/',

	// Your images types ( avatar/cover/background/...)
	'types' => array(
		// Settings for an avatar
		'Product' => array(
	    	'crop_width'  => 1000,  // Crop image to this width
	    	'crop_height' => 400,  // Crop image to this height
	    	'force_crop'  => true, // If the image width, height is less than crop_width, crop_weight force the crop
	    	'min_width'   => 1000,  // Minimum width required 
	    	'min_height'  => 400,  // Minimum height required
	    	//'max_width'   => null, // Maximum width allowed (null - not set)
	    	//'max_height'  => null, // Maximum height allowed (null - not set)

	    	'original' => false, // If you want to keep the full size image
	    ),
		'avatar' => array(
	    	'crop_width'  => 170,  // Crop image to this width
	    	'crop_height' => 170,  // Crop image to this height
	    	'force_crop'  => true, // If the image width, height is less than crop_width, crop_weight force the crop
	    	'min_width'   => 170,  // Minimum width required 
	    	'min_height'  => 170,  // Minimum height required
	    	//'max_width'   => null, // Maximum width allowed (null - not set)
	    	//'max_height'  => null, // Maximum height allowed (null - not set)

	    	'original' => false, // If you want to keep the full size image
	    ),
		'logo' => array(
	    	'crop_width'  => 200,  // Crop image to this width
	    	'crop_height' => 200,  // Crop image to this height
	    	'force_crop'  => false, // If the image width, height is less than crop_width, crop_weight force the crop
	    	'min_width'   => 200,  // Minimum width required 
	    	'min_height'  => 200,  // Minimum height required
	    	'max_width'   => null, // Maximum width allowed (null - not set)
	    	'max_height'  => null, // Maximum height allowed (null - not set)
	    	'original' => true, // If you want to keep the full size image
	    ),
		'avatar3' => array(
	    	'crop_width'  => 400,  // Crop image to this width
	    	'crop_height' => 400,  // Crop image to this height
	    	'force_crop'  => true, // If the image width, height is less than crop_width, crop_weight force the crop
	    	'min_width'   => 400,  // Minimum width required 
	    	'min_height'  => 400,  // Minimum height required
	    	//'max_width'   => null, // Maximum width allowed (null - not set)
	    	//'max_height'  => null, // Maximum height allowed (null - not set)

	    	'original' => false, // If you want to keep the full size image
	    ),
		
		'avatar4' => array(
	    	'crop_width'  => 378,  // Crop image to this width
	    	'crop_height' => 240,  // Crop image to this height
	    	'force_crop'  => true, // If the image width, height is less than crop_width, crop_weight force the crop
	    	'min_width'   => 278,  // Minimum width required 
	    	'min_height'  => 240,  // Minimum height required
	    	//'max_width'   => null, // Maximum width allowed (null - not set)
	    	//'max_height'  => null, // Maximum height allowed (null - not set)

	    	'original' => false, // If you want to keep the full size image
	    ),
		
		'banner' => array(
	    	'crop_width'  => 1000,  // Crop image to this width
	    	'crop_height' => 300,  // Crop image to this height
	    	'force_crop'  => true, // If the image width, height is less than crop_width, crop_weight force the crop
	    	'min_width'   => 1000,  // Minimum width required 
	    	'min_height'  => 200,  // Minimum height required
	    	'max_width'   => null, // Maximum width allowed (null - not set)
	    	'max_height'  => null, // Maximum height allowed (null - not set)
			
	    	'original' => false, // If you want to keep the full size image
	    ),
		'blog_banner' => array(
	    	'crop_width'  => 736,  // Crop image to this width
	    	'crop_height' => 500,  // Crop image to this height
	    	'force_crop'  => true, // If the image width, height is less than crop_width, crop_weight force the crop
	    	'min_width'   => 736,  // Minimum width required 
	    	'min_height'  => 500,  // Minimum height required
	    	//'max_width'   => null, // Maximum width allowed (null - not set)
	    	//'max_height'  => null, // Maximum height allowed (null - not set)
			
	    	'original' => false, // If you want to keep the full size image
	    ),

	    // Settings for a cover image
	   'cover' => array(
	   		'crop_width'  => 1400,  // Crop image to this width
	    	'crop_height' => 600,  // Crop image to this height
	    	'force_crop'  => true, // If the image width, height is less than crop_width, crop_weight force the crop
	    	'min_width'   => 1000,  // Minimum width required 
	    	'min_height'  => 400,  // Minimum height required
	    	//'max_width'   => null, // Maximum width allowed (null - not set)
	    	//'max_height'  => null, // Maximum height allowed (null - not set)
			
	    	'original' => false, // If you want to keep the full size image
	   	),
	   
	   // Settings for background image
	   'background' => array(
	   		// Add settings here
	   	)
	),

	'max_file_size' => 10000, // in KB (1000KB = 1MB)
	'image_types' => 'jpg|png|jpeg|gif', // Allowed image extensions
	
	// Errors messages
	'error_messages' => array(
		1 => 'The uploaded file exceeds the upload_max_filesize directive in php.ini',
		2 => 'The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form',
		3 => 'The uploaded file was only partially uploaded',
		4 => 'No file was uploaded',
		6 => 'Missing a temporary folder',
		7 => 'Failed to write file to disk',
		8 => 'A PHP extension stopped the file upload',
		'upload_failed' => 'Failed to upload the file',
		'move_failed' => 'Failed to move the uploaded file',
		'max_file_size' => 'File is too big',
		'min_file_size' => 'File is too small',
		'accept_file_types' => 'Filetype not allowed',
		'max_width' => 'Image exceeds maximum width of ',
		'min_width' => 'Image requires a minimum width of ',
		'max_height' => 'Image exceeds maximum height of ',
		'min_height' => 'Image requires a minimum height of ',
		'undefined_type' => 'Undefined type',
	)
);