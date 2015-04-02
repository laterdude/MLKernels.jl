#===================================================================================================
  Kernel Functions Module
===================================================================================================#

module MLKernels

import Base: show, exp, eltype, isposdef, convert, promote #, call

export
    # Functions
    description,
    isposdef_kernel,
    kernel_matrix,
    gramian_matrix,
    lagged_gramian_matrix,
    center_kernel_matrix!,
    center_kernel_matrix,
    nystrom,
    # Types
    Kernel,
        SimpleKernel,
            StandardKernel,
                # PointwiseProductKernel,
                EuclideanDistanceKernel,
	                GaussianKernel,
	                LaplacianKernel,
            	    RationalQuadraticKernel,
            	    MultiQuadraticKernel,
            	    InverseMultiQuadraticKernel,
            	    PowerKernel,
            	    LogKernel,
                ScalarProductKernel,
	                LinearKernel,
	                PolynomialKernel,
            	    SigmoidKernel,
                SeparableKernel,
                    MercerSigmoidKernel,
            ScaledKernel,
        CompositeKernel,
            KernelProduct,
            KernelSum

include("kerneltypes.jl")
include("kernelmatrix.jl")

end # MLKernels
