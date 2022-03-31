<!--left-fixed -navigation-->
<div class=" sidebar" role="navigation">
	<div class="navbar-collapse">
		<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
			<ul class="nav" id="side-menu">
				<li>
					<a href="{{ url('') }}" class="active"><i class="fa fa-home nav_icon"></i>Dashboard</a>
				</li>
				<li>
					<a href="#"><i class="fa fa-cogs nav_icon"></i>Stock Items <span class="nav-badge">12</span> <span class="fa arrow"></span></a>
					<ul class="nav nav-second-level collapse">
						<li>
							<a href="{{ route('items.create') }}">Add Item</a>
						</li>
						<li>
							<a href="{{ url('') }}/items">View List</a>
						</li>
					</ul>
					<!-- /nav-second-level -->
				</li>
				<li class="">
					<a href="#"><i class="fa fa-book nav_icon"></i>Employees <span class="fa arrow"></span></a>
					<ul class="nav nav-second-level collapse">
						<li>
							<a href="{{ route('employees.create') }}">Add Employee</a>
						</li>
						<li>
							<a href="{{ route('employees.index') }}">View List</a>
						</li>
					</ul>
					<!-- /nav-second-level -->
				</li>
				<li>
					<a href="#"><i class="fa fa-envelope nav_icon"></i>Purchase<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level collapse">
						<li>
							<a href="#">Add Purchase <span class="nav-badge-btm">05</span></a>
						</li>
						<li>
							<a href="#">View Report</a>
						</li>
					</ul>
					<!-- //nav-second-level -->
				</li>
				<li>
					<a href="{{ route('transactions.index') }}"><i class="fa fa-table nav_icon"></i>Transaction <span class="nav-badge">05</span><span class="fa arrow"></span></a>				
					<ul class="nav nav-second-level collapse">
						<li>
							<a href="{{ route('transactions.create') }}">Add New</a>
						</li>
						<li>
							<a href="{{ url('') }}/transactions/report">View Report</a>
						</li>
					</ul>
					<!-- //nav-second-level -->
				</li>
				<li>
					<a href="#"><i class="fa fa-file-text-o nav_icon"></i>Customers<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level collapse">
						<li>
							<a href="{{ url('') }}/customers">List</a>
						</li>								
					</ul>
					<!-- //nav-second-level -->
				</li>
				<li>
					<a href="#"><i class="fa fa-file-text-o nav_icon"></i>Others<span class="nav-badge-btm">02</span><span class="fa arrow"></span></a>
					<ul class="nav nav-second-level collapse">
						<li>
							<a href="{{ url('') }}/services">Services</a>
							<a href="{{ url('') }}/category">Service Categories</a>
						</li>								
					</ul>
					<!-- //nav-second-level -->
				</li>						
			</ul>
			<!-- //sidebar-collapse -->
		</nav>
	</div>
</div>
<!--left-fixed -navigation-->